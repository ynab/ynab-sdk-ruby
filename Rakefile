begin
  require 'rspec/core/rake_task'
  require 'bundler/gem_tasks'

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
  sh "wget https://api.youneedabudget.com/papi/#{spec_filename} -O ./.swagger-codegen/#{spec_filename}"

  # Copy ignore file to root (workaround for ignore-file-override option not working)
  sh "cp ./.swagger-codegen/.swagger-codegen-ignore ./"

  # Use Docker to codegen ruby based on the swagger spec
  sh "docker pull swaggerapi/swagger-codegen-cli && docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate"\
     " -i /local/.swagger-codegen/#{spec_filename}"\
     " -l ruby"\
     " -c /local/.swagger-codegen/config.json"\
     " -t /local/.swagger-codegen/templates"\
     " -o /local"

  # Remove ignore file from root
  sh "rm ./.swagger-codegen-ignore"

end

task :commit_version_bump do
  sh "git add lib/ynab/version.rb Gemfile.lock && git diff-index --quiet HEAD || git commit -m 'Bumping version for release'"
end

desc "Bump version, run specs build a gem and release on RubyGems"
task :publish => ['spec', 'commit_version_bump', 'clobber', 'release']

