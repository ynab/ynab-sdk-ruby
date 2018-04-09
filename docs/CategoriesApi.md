# YnabApi::CategoriesApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /budgets/{budget_id}/categories | List categories
[**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /budgets/{budget_id}/categories/{category_id} | Single category


# **get_categories**
> CategoriesResponse get_categories(budget_id)

List categories

Returns all categories grouped by category group.

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List categories
  result = ynab.foobar.get_categories(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end

begin
  result = ynab.budgets.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**CategoriesResponse**](CategoriesResponse.md)

# **get_category_by_id**
> CategoryResponse get_category_by_id(budget_id, category_id)

Single category

Returns a single category

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #Single category
  result = ynab.foobar.get_category_by_id(budget_id, category_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_category_by_id: #{e}"
end

begin
  result = ynab.budgets.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **category_id** | [**String**](.md)| The ID of the Category. | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

