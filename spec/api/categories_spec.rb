require 'spec_helper'

describe 'categories' do
  let(:access_token) { 'd7b03d9727f5e7dc7031ea001fd9bcdc785f6960aba240a6a2299a79634e8cbd' }
  let(:budget_id) { 'df5868f8-f44f-4bc5-84a1-02d3e35791ca' }
  let(:client) { YnabApi::Client.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.categories }

  describe 'test an instance of CategoriesApi' do
    it 'should create an instance of CategoriesApi' do
      expect(instance).to be_instance_of(YnabApi::CategoriesApi)
    end
  end

  describe 'authorization' do
    it "sets the Bearer Auth header correctly" do
      VCR.use_cassette("categories") do
        response = instance.get_categories(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it "throws when unauthorized" do
      VCR.use_cassette("categories_unauthorized") do
        client = YnabApi::Client.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.categories.get_categories(budget_id)
        rescue YnabApi::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/categories' do
    it "returns a list of categories" do
      VCR.use_cassette("categories") do
        response = instance.get_categories(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.category_groups.length).to be 8
        expect(response.data.category_groups[0].categories.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/category/{category_id}' do
    it "returns a category" do
      VCR.use_cassette("category") do
        response = instance.get_category_by_id(budget_id, '6921a4b3-095a-435f-92e1-28931d3186ed')
        expect(response.data.category).to be
        expect(response.data.category.name).to eq 'Groceries'
      end
    end
  end
end
