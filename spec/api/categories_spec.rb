require 'spec_helper'

describe 'categories' do
  let(:access_token) { '9f1a2c4842b614a771aaae9220fc54ae835e298c4654dc2c9205fc1d7bd1a045' }
  let(:budget_id) { 'f419ac25-6217-4175-88dc-c3136ff5f6fd' }
  let(:category_id) { 'acd2a771-0a56-4dba-97bd-3952b0879282' }
  let(:client) { YNAB::API.new(access_token, 'api.localhost:3000', false) }
  let (:instance) { client.categories }

  describe 'test an instance of CategoriesApi' do
    it 'should create an instance of CategoriesApi' do
      expect(instance).to be_instance_of(YNAB::CategoriesApi)
    end
  end

  describe 'authorization' do
    it 'sets the Bearer Auth header correctly' do
      VCR.use_cassette("categories") do
        response = instance.get_categories(budget_id)
        expect(client.last_request.options[:headers]["Authorization"]).to eq "Bearer #{access_token}"

      end
    end

    it 'throws when unauthorized' do
      VCR.use_cassette("categories_unauthorized") do
        client = YNAB::API.new('not_valid_access_token', 'api.localhost:3000', false)
        begin
          response = client.categories.get_categories(budget_id)
        rescue YNAB::ApiError => e
          expect(e.code).to be 401
          expect(client.last_request.response.options[:code]).to be 401
        end
      end
    end
  end

  describe 'GET /budgets/{budget_id}/categories' do
    it 'returns a list of categories' do
      VCR.use_cassette("categories") do
        response = instance.get_categories(budget_id)
        expect(client.last_request.response.options[:code]).to be 200
        expect(response.data.category_groups.length).to be 8
        expect(response.data.category_groups[0].categories.length).to be 3
      end
    end
  end

  describe 'GET /budgets/{budget_id}/categories/{category_id}' do
    it 'returns a category' do
      VCR.use_cassette("category") do
        response = instance.get_category_by_id(budget_id, category_id)
        expect(response.data.category).to be
        expect(response.data.category.name).to eq 'Groceries'
      end
    end
  end

  describe 'PATCH /budgets/{budget_id}/months/{month}/categories/{category_id}' do
    it 'returns a category' do
      VCR.use_cassette("patch_month_category") do
        response = instance.update_month_category(budget_id, '2018-02-01', category_id, month_category: { budgeted: 20382 })
        expect(response.data.category).to be
        expect(response.data.category.name).to eq 'Groceries'
        expect(response.data.category.budgeted).to eq 20382
      end
    end
  end
end
