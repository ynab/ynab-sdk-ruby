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

desc "Generate from latest spec, build a gem and release on RubyGems"
task :release => ['generate', 'spec', 'release']

desc "Run Swagger Code Generator to update the client from the Swagger spec"
task :generate do
  # Download latest swagger spec
  spec_filename = 'spec-v1-swagger.json'
  sh "rm #{spec_filename} && wget https://api.youneedabudget.com/papi/#{spec_filename}"

  # Replace nullable types defined as i.e. ["string", "null"] in the spec to simply "string" as the generator does not understand the nullable format.
  # Examples:
  #   ["string", "null"] => "string"
  #   ["number", "null"] => "number"
  sh %Q[sed -E -i '' 's/\\\[\\"(string|number|array|boolean)\\"\\, \\"null\\"\\\]/"\\1"/g' #{spec_filename}]

  # Use Docker to codegen ruby based on the swagger spec
  sh "docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate"\
     " -i /local/spec-v1-swagger.json"\
     " -l ruby"\
     " -c /local/config.json -o /local"\
     " -t /local/swagger-templates"
end
