require 'spec_helper'

describe 'payees' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.payees }

  describe 'test an instance of PayeesApi' do
    it 'should create an instance of PayeesApi' do
      expect(instance).to be_instance_of(YnabApi::PayeesApi)
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
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.payees.get_payees(budget_id)
        rescue YnabApi::ApiError => e
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
        response = instance.get_payee_by_id(budget_id, '0c102a79-7ddf-4b8a-bd20-69563fb2caec')
        expect(response.data.payee).to be
        expect(response.data.payee.name).to eq 'Test Payee'
      end
    end
  end
end
