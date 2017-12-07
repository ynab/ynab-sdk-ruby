require 'spec_helper'

describe 'transactions' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.transactions }

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionApi' do
      expect(instance).to be_instance_of(YnabApi::TransactionsApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("transactions") do
        response = instance.get_transactions(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("transactions_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.transactions.get_transactions(budget_id)
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/transactions' do
    it "returns a list of transactions" do
      VCR.use_cassette("transactions") do
        response = instance.get_transactions(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.transactions.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/transaction/{payee_id}' do
    it "returns a payee" do
      VCR.use_cassette("transaction") do
        response = instance.get_transactions_by_id(budget_id, '2d672d77-577e-4dfc-9f60-05a314aafc7e')
        expect(response.data.transaction).to be
        expect(response.data.transaction.amount).to eq -2000
      end
    end
  end
end
