# YnabApi::PayeesApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payee_by_id**](PayeesApi.md#get_payee_by_id) | **GET** /budgets/{budget_id}/payees/{payee_id} | Single payee
[**get_payees**](PayeesApi.md#get_payees) | **GET** /budgets/{budget_id}/payees | List payees


# **get_payee_by_id**
> PayeeResponse get_payee_by_id(budget_id, payee_id)

Single payee

Returns single payee

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #Single payee
  result = ynab.foobar.get_payee_by_id(budget_id, payee_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeesApi->get_payee_by_id: #{e}"
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
 **payee_id** | [**String**](.md)| The ID of the Payee. | 

### Return type

[**PayeeResponse**](PayeeResponse.md)

# **get_payees**
> PayeesResponse get_payees(budget_id)

List payees

Returns all payees

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List payees
  result = ynab.foobar.get_payees(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeesApi->get_payees: #{e}"
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

[**PayeesResponse**](PayeesResponse.md)

