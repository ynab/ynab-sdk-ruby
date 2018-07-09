require 'spec_helper'

describe 'accounts' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.accounts }

  describe 'test an instance of AccountsApi' do
    it 'should create an instance of AccountsApi' do
      expect(instance).to be_instance_of(YNAB::AccountsApi)
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
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.accounts.get_accounts(budget_id)
        rescue YNAB::ApiError => e
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
        response = instance.get_account_by_id(budget_id, '5982e895-98e5-41ca-9681-0b6de1036a1c')
        expect(response.data.account).to be
        expect(response.data.account.name).to eq "Checking"
      end
    end
  end

  it "foobar" do
    VCR.use_cassette("accounts") do
      client = YnabApi::Client.new(access_token, 'api.localhost:3000', false)
      response = client.accounts.get_accounts(budget_id)
      expect(client.last_request.response.options[:code]).to be 200
      expect(response.data.accounts.length).to be 1
    end
  end
end
