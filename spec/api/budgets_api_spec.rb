=begin
#YNAB API Endpoints

#Our API uses a REST based design, leverages the JSON data format, and relies upon HTTPS for transport. We respond with meaningful HTTP response codes and if an error occurs, we include error details in the response body.  API Documentation is at https://api.youneedabudget.com

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::BudgetsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BudgetsApi' do
  before do
    # run before each test
    @instance = SwaggerClient::BudgetsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BudgetsApi' do
    it 'should create an instance of BudgetsApi' do
      expect(@instance).to be_instance_of(SwaggerClient::BudgetsApi)
    end
  end

  # unit tests for get_budget_contents
  # Single budget
  # Returns a single budget with all related entities.  This resource is effectively a full budget export.
  # @param budget_id ID of budget
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :last_knowledge_of_server Starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.
  # @return [BudgetDetailResponse]
  describe 'get_budget_contents test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_budgets
  # List budgets
  # Returns budgets list with summary information
  # @param [Hash] opts the optional parameters
  # @return [BudgetSummaryResponse]
  describe 'get_budgets test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end