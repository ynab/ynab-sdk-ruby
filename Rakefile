begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = "--tag fast"
  end
rescue LoadError
  # no rspec available
end

task :generate do
  sh "docker run --rm -v ${PWD}:/local swaggerapi/swagger-codegen-cli generate"\
     " -i https://ynab-api-develop.herokuapp.com/papi/spec-v1-swagger.json"\
     " -l ruby"\
     " -c /local/config.json -o /local"
end