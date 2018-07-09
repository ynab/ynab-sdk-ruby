require 'spec_helper'

describe 'payees' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.payees }

  describe 'test an instance of PayeesApi' do
    it 'should create an instance of PayeesApi' do
      expect(instance).to be_instance_of(YNAB::PayeesApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("payees") do
        response = instance.get_payees(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("payees_unauthorized") do
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.payees.get_payees(budget_id)
        rescue YNAB::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/payees' do
    it "returns a list of payees" do
      VCR.use_cassette("payees") do
        response = instance.get_payees(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.payees.length).to be 5
      end
    end
  end

  describe 'GET /budgets/{budget_id}/payees/{payee_id}' do
    it "returns a payee" do
      VCR.use_cassette("payee") do
        response = instance.get_payee_by_id(budget_id, '200e6eb1-02fc-4af6-be26-27c5740bb949')
        expect(response.data.payee).to be
        expect(response.data.payee.name).to eq 'Test Payee'
      end
    end
  end
end
