require 'spec_helper'

describe 'plans' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.plans }

  describe 'test an instance of PlansApi' do
    it 'should create an instance of PlansApi' do
      expect(instance).to be_instance_of(YNAB::PlansApi)
    end
  end

  describe 'authorization' do
    it 'sets the Bearer Auth header correctly' do
      VCR.use_cassette("plans") do
        response = instance.get_plans
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it 'throws when unauthorized' do
      VCR.use_cassette("plans_unauthorized") do
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.plans.get_plans
        rescue YNAB::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets' do
    it 'returns a list of budgets' do
      VCR.use_cassette("budgets") do
        response = instance.get_plans
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.budgets.length).to be 4
      end
    end
  end

  describe 'GET /budgets/{plan_id}' do
    it 'returns a budget' do
      VCR.use_cassette("budget") do
        response = instance.get_plan_by_id('f419ac25-6217-4175-88dc-c3136ff5f6fd')
        expect(response.data.budget).to be
        expect(response.data.budget.name).to eq "ABC"
      end
    end
  end
end
