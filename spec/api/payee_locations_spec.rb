require 'spec_helper'

describe 'payee locations' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.payee_locations }

  describe 'test an instance of PayeeLocationsApi' do
    it 'should create an instance of PayeeLocationsApi' do
      expect(instance).to be_instance_of(YnabApi::PayeeLocationsApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("payee_locations") do
        response = instance.get_payee_locations(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("payee_locations_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.payee_locations.get_payee_locations(budget_id)
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/payee_location' do
    it "returns a list of payee locations" do
      VCR.use_cassette("payee_locations") do
        response = instance.get_payee_locations(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.payee_locations.length).to be 1
      end
    end
  end

  describe 'GET /budgets/{budget_id}/payee_locations/{payee_id}' do
    it "returns a payee location" do
      VCR.use_cassette("payee_location") do
        response = instance.get_payee_location_by_id(budget_id, 'bd3219ea-e0c1-4c10-a881-e8e4d5697b6b')
        expect(response.data.payee_location).to be
        expect(response.data.payee_location.latitude).to eq "40.7128"
        expect(response.data.payee_location.longitude).to eq "74.006"
      end
    end
  end
end
