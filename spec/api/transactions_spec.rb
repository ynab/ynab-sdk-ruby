require 'spec_helper'

describe 'transactions' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:category_id) { '84ffe61c-081c-44db-ad23-6ee809206c40' }
  let(:payee_id) { '2676f959-c5de-4db2-8d3f-2503777b25fb' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.transactions }

  describe 'test an instance of TransactionsApi' do
    it 'should create an instance of TransactionApi' do
      expect(instance).to be_instance_of(YNAB::Overrides::TransactionsApi)
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
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.transactions.get_transactions(budget_id)
        rescue YNAB::ApiError => e
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
        expect(response.data.transactions.length).to be 2
      end
    end
  end

  describe 'GET /budgets/{budget_id}/category/{category_id}/transactions' do
    it "returns a list of transactions for a category" do
      VCR.use_cassette("category_transactions") do
        response = instance.get_transactions_by_category(budget_id, category_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.transactions.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/category/{payee_id}/transactions' do
    it "returns a list of transactions for a payee" do
      VCR.use_cassette("payee_transactions") do
        response = instance.get_transactions_by_payee(budget_id, payee_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.transactions.length).to be 2
      end
    end
  end

  describe 'GET /budgets/{budget_id}/transaction/{transaction_id}' do
    it "returns a transaction" do
      VCR.use_cassette("transaction") do
        response = instance.get_transaction_by_id(budget_id, '81c374ff-74ab-4d6d-8d5a-ba3ad3fa68e4')
        expect(response.data.transaction).to be
        expect(response.data.transaction.amount).to eq -2000
      end
    end
  end

  describe 'POST /budgets/{budget_id}/transactions' do
    it "creates a transaction" do
      VCR.use_cassette("create_transaction") do
        response = instance.create_transaction(budget_id, {
          transaction: {
            date: '2018-01-01',
            account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
            amount: 20000
          }
        })
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.transaction).to be
        expect(response.data.transaction.amount).to eq 20000
      end
    end

    it "creates multiple transactions" do
      VCR.use_cassette("create_transaction") do
        response = instance.create_transactions(budget_id, {
          transactions: [
            {
              date: '2018-01-01',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 20000
            },
            {
              date: '2018-01-02',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 30000
            },
          ]
        })
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.transaction).to be
        expect(response.data.transaction.amount).to eq 20000
      end
    end
  end

  describe 'PUT /budgets/{budget_id}/transactions/{transaction_id}' do
    it "updates a transaction" do
      VCR.use_cassette("update_transaction") do
        response = instance.update_transaction(budget_id, '4cd63d34-3814-4f50-abd0-59ce05b40d91', {
          transaction: {
            date: '2018-01-02',
            account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
            amount: 30000
          }
        })
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.transaction).to be
        expect(response.data.transaction.amount).to eq 30000
      end
    end
  end

  describe 'PATCH /budgets/{budget_id}/transactions' do
    it "updates multiple transactions" do
      VCR.use_cassette("update_transactions") do
        response = instance.update_transactions(budget_id, {
          transactions: [
            {
              date: '2018-01-02',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 30000
            },
            {
              date: '2018-01-03',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 40000
            }
          ]
        })
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.transactions).to be
        expect(response.data.transactions.length).to eq 2
      end
    end
  end

  describe 'POST /budgets/{budget_id}/transactions' do
    it "create multiple transactions" do
      VCR.use_cassette("multiple_transactions") do
        response = instance.create_transaction(budget_id, {
          transactions: [
            {
              date: '2018-01-01',
              account_id: 'c15e474a-fff6-459f-82de-8e7ea1a3819e',
              amount: 10000
            },
            {
              date: '2018-01-02',
              account_id: 'c15e474a-fff6-459f-82de-8e7ea1a3819e',
              amount: 20000
            },
            {
              date: '2018-01-03',
              account_id: 'c15e474a-fff6-459f-82de-8e7ea1a3819e',
              amount: 30000,
              import_id: '123456'
            }
          ]
        })
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.transactions).to be
        expect(response.data.transaction_ids.length).to eq 3
        expect(response.data.duplicate_import_ids.length).to eq 0
      end
    end
  end

  describe 'POST /budgets/{budget_id}/transactions/import' do
    it "import transactions" do
      VCR.use_cassette("import_transactions") do
        response = instance.import_transactions(budget_id)
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.transaction_ids.length).to eq 1
        expect(response.data.transaction_ids).to include '07b68f11-98bd-4184-8866-83268a654318'
      end
    end
  end

  describe 'POST /budgets/{budget_id}/transactions/bulk' do
    it "bulk creations transactions" do
      VCR.use_cassette("bulk_transactions") do
        response = instance.bulk_create_transactions(budget_id, {
          transactions: [
            {
              date: '2018-01-01',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 10000
            },
            {
              date: '2018-01-02',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 20000
            },
            {
              date: '2018-01-03',
              account_id: '5982e895-98e5-41ca-9681-0b6de1036a1c',
              amount: 30000,
              import_id: '123456'
            }
          ]
        })
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.bulk).to be
        expect(response.data.bulk.transaction_ids.length).to eq 3
        expect(response.data.bulk.duplicate_import_ids.length).to eq 0
      end
    end
  end
end
