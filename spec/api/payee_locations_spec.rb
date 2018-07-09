require 'spec_helper'

describe 'payee locations' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.payee_locations }

  describe 'test an instance of PayeeLocationsApi' do
    it 'should create an instance of PayeeLocationsApi' do
      expect(instance).to be_instance_of(YNAB::PayeeLocationsApi)
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
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.payee_locations.get_payee_locations(budget_id)
        rescue YNAB::ApiError => e
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
        response = instance.get_payee_location_by_id(budget_id, '052c7814-1797-44ce-9519-020e864e4928')
        expect(response.data.payee_location).to be
        expect(response.data.payee_location.latitude).to eq "40.7128"
        expect(response.data.payee_location.longitude).to eq "74.006"
      end
    end
  end
end
