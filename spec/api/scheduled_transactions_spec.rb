require 'spec_helper'

describe 'scheduled transactions' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.scheduled_transactions }

  describe 'test an instance of ScheduledTransactionsApi' do
    it 'should create an instance of ScheduledTransactionApi' do
      expect(instance).to be_instance_of(YNAB::ScheduledTransactionsApi)
    end
  end

  describe 'authorization' do
    it 'sets the Bearer Auth header correctly' do
      VCR.use_cassette("scheduled_transactions") do
        response = instance.get_scheduled_transactions(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it 'throws when unauthorized' do
      VCR.use_cassette("scheduled_transactions_unauthorized") do
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.scheduled_transactions.get_scheduled_transactions(budget_id)
        rescue YNAB::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/scheduled_transactions' do
    it 'returns a list of transactions' do
      VCR.use_cassette("scheduled_transactions") do
        response = instance.get_scheduled_transactions(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.scheduled_transactions.length).to be 1
      end
    end
  end

  describe 'GET /budgets/{budget_id}/scheduled_transactions/{payee_id}' do
    it 'returns a payee' do
      VCR.use_cassette("scheduled_transaction") do
        response = instance.get_scheduled_transaction_by_id(budget_id, '1a8e4929-3ad1-4859-8443-2aeeab0684ab')
        expect(response.data.scheduled_transaction).to be
        expect(response.data.scheduled_transaction.amount).to eq -10000
      end
    end
  end

  describe 'POST /budgets/{budget_id}/scheduled_transactions' do
    it 'creates a scheduled transaction' do
      VCR.use_cassette("create_scheduled_transaction") do
        response = instance.create_scheduled_transaction(budget_id, {
          scheduled_transaction: {
            date: "#{Time.now.year + 1}-01-01",
            account_id: '49b0c987-7d2b-46ec-ba14-f8a7e79fb830',
            amount: 20000,
            frequency: 'weekly',
          }
        })
        expect(client.last_request.response.options[:code]).to be 201
        expect(response.data.scheduled_transaction).to be
        expect(response.data.scheduled_transaction.amount).to eq 20000
      end
    end
  end
end
