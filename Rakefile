begin
  require 'rspec/core/rake_task'
  require 'bundler/gem_tasks'
  require 'lib/ynab/version'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = "-fd"
  end
rescue LoadError
  # no rspec available
end

task :default => [:spec]

desc "Run Swagger Code Generator to update the client from the Swagger spec"
task :generate do
  # Download latest swagger spec
  spec_filename = 'spec-v1-swagger.json'
  sh "wget https://api.ynab.com/papi/#{spec_filename} -O ./.swagger-codegen/#{spec_filename}"

  # Copy ignore file to root (workaround for ignore-file-override option not working)
  sh "cp ./.swagger-codegen/.swagger-codegen-ignore ./"

  # Use Docker to codegen ruby based on the swagger spec
  swagger_codegen_image_name = "ynabdev/swagger-codegen-cli:2.4.14"
  sh "docker pull #{swagger_codegen_image_name} && docker run --rm -v ${PWD}:/local #{swagger_codegen_image_name} generate"\
     " -i /local/.swagger-codegen/#{spec_filename}"\
     " -l ruby"\
     " -c /local/.swagger-codegen/config.json"\
     " -t /local/.swagger-codegen/templates"\
     " -o /local"

  # Remove ignore file from root
  sh "rm ./.swagger-codegen-ignore"
end

task :get_current_version do
  puts YNAB::VERSION
end

task :bump_version_number, [:version_type] do |t, args|
  current_version = YNAB::VERSION
  new_version = current_version

  # Increment version number
  case args[:version_type]
  when 'major'
    new_version = current_version.split('.').tap { |v| v[0] = v[0].to_i + 1 }.join('.')
  when 'minor'
    new_version = current_version.split('.').tap { |v| v[1] = v[1].to_i + 1 }.join('.')
  when 'patch'
    new_version = current_version.split('.').tap { |v| v[2] = v[2].to_i + 1 }.join('.')
  else
    puts "Invalid version type: #{args[:version_type]}"
    exit 1
  end

  version_file_path = 'lib/ynab/version.rb'
  current_version_file_text = File.read(version_file_path)
  new_version_file_text = current_version_file_text.gsub(current_version, new_version)
  File.open(version_file_path, "w") {|file| file.puts new_version_file_text }

  puts new_version
end

task :commit_version_bump do
  sh "git add lib/ynab/version.rb Gemfile.lock && git diff-index --quiet HEAD || git commit -m 'Bumping version for release'"
end

desc "Bump version, run specs build a gem and release on RubyGems"
task :publish => ['spec', 'commit_version_bump', 'clobber', 'release']

