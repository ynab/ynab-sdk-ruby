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

desc "Run OpenAPI Generator to update the client from the spec"
task :generate do
  spec_filename = 'open_api_spec.yaml'
  # Download latest spec
  sh "wget https://api.ynab.com/papi/#{spec_filename} -O ./#{spec_filename}"
  # Remove existing generated files to ensure old files are not included in the gem
  sh "rm -r docs/ lib/ynab/models/"
  # Generate the client
  sh "openapi-generator generate -i ./#{spec_filename} -g ruby -c config.yaml -o ./"
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

