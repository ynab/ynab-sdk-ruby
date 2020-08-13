require 'spec_helper'

describe 'months' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.months }

  describe 'test an instance of MonthsApi' do
    it 'should create an instance of MonthsApi' do
      expect(instance).to be_instance_of(YNAB::MonthsApi)
    end
  end

  describe 'authorization' do
    it 'sets the Bearer Auth header correctly' do
      VCR.use_cassette("months") do
        response = instance.get_budget_months(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it 'throws when unauthorized' do
      VCR.use_cassette("months_unauthorized") do
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.months.get_budget_months(budget_id)
        rescue YNAB::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/months' do
    it 'returns a list of months' do
      VCR.use_cassette("months") do
        response = instance.get_budget_months(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.months.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/months/{month}' do
    it 'returns a month' do
      VCR.use_cassette("month") do
        response = instance.get_budget_month(budget_id, '2018-02-01')
        expect(response.data.month).to be
        expect(response.data.month.to_be_budgeted).to eq 1000000
        expect(response.data.month.note).to eq "Test Note"
      end
    end
  end
end
