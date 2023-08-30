# -*- encoding: utf-8 -*-

=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.ynab.com

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "ynab/version"

Gem::Specification.new do |s|
  s.name        = "ynab"
  s.version     = YNAB::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["YNAB"]
  s.email       = ["api@ynab.com"]
  s.homepage    = "https://github.com/ynab/ynab-sdk-ruby"
  s.summary     = "YNAB API Endpoints Ruby Gem"
  s.description = "Ruby gem wrapper for the YNAB API. Read the documentation at https://api.ynab.com"
  s.license     = "Apache-2.0"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
