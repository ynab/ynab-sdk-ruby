require 'spec_helper'

describe 'months' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.months }

  describe 'test an instance of MonthsApi' do
    it 'should create an instance of MonthsApi' do
      expect(instance).to be_instance_of(YnabApi::MonthsApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("months") do
        response = instance.get_budget_months(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("months_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.months.get_budget_months(budget_id)
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/months' do
    it "returns a list of months" do
      VCR.use_cassette("months") do
        response = instance.get_budget_months(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.months.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/months/{month}' do
    it "returns a month" do
      VCR.use_cassette("month") do
        response = instance.get_budget_month(budget_id, '2017-12-01')
        expect(response.data.month).to be
        expect(response.data.month.to_be_budgeted).to eq 800000
        expect(response.data.month.note).to eq "Test Note"
      end
    end
  end
end
