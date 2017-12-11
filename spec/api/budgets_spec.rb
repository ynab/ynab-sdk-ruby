require 'spec_helper'

describe 'budgets' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.budgets }

  describe 'test an instance of BudgetsApi' do
    it 'should create an instance of BudgetsApi' do
      expect(instance).to be_instance_of(YnabApi::BudgetsApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("budgets") do
        response = instance.get_budgets
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("budgets_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.budgets.get_budgets
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets' do
    it "returns a list of budgets" do
      VCR.use_cassette("budgets") do
        response = instance.get_budgets
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.budgets.length).to be 6
      end
    end
  end

  describe 'GET /budgets/{budget_id}' do
    it "returns a budget" do
      VCR.use_cassette("budget") do
        response = instance.get_budget_by_id('df5868f8-f44f-4bc5-84a1-02d3e35791ca')
        expect(response.data.budget).to be
        expect(response.data.budget.name).to eq "ABC"
      end
    end
  end
end
