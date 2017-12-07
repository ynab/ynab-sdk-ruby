require 'spec_helper'

describe 'accounts' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.accounts }

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(instance).to be_instance_of(YnabApi::AccountsApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("accounts") do
        response = instance.get_accounts(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("accounts_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.accounts.get_accounts(budget_id)
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/accounts' do
    it "returns a list of accounts" do
      VCR.use_cassette("accounts") do
        response = instance.get_accounts(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.accounts.length).to be 1
      end
    end
  end

  describe 'GET /budgets/{budget_id}/accounts/{account_id}' do
    it "returns an account" do
      VCR.use_cassette("account") do
        response = instance.get_account_by_id(budget_id, '515df7e3-d28a-4a50-a9b2-33814700e78a')
        expect(response.data.account).to be
        expect(response.data.account.name).to eq "Checking"
      end
    end
  end
end
