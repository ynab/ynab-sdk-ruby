# YnabApi::PayeeLocationsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payee_location_by_id**](PayeeLocationsApi.md#get_payee_location_by_id) | **GET** /budgets/{budget_id}/payee_locations/{payee_location_id} | Single payee location
[**get_payee_locations**](PayeeLocationsApi.md#get_payee_locations) | **GET** /budgets/{budget_id}/payee_locations | List payee locations
[**get_payee_locations_by_payee**](PayeeLocationsApi.md#get_payee_locations_by_payee) | **GET** /budgets/{budget_id}/payees/{payee_id}/payee_locations | List locations for a payee


# **get_payee_location_by_id**
> PayeeLocationResponse get_payee_location_by_id(budget_id, payee_location_id)

Single payee location

Returns a single payee location

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #Single payee location
  result = ynab.foobar.get_payee_location_by_id(budget_id, payee_location_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_location_by_id: #{e}"
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
 **payee_location_id** | [**String**](.md)| ID of payee location | 

### Return type

[**PayeeLocationResponse**](PayeeLocationResponse.md)

# **get_payee_locations**
> PayeeLocationsResponse get_payee_locations(budget_id)

List payee locations

Returns all payee locations

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List payee locations
  result = ynab.foobar.get_payee_locations(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_locations: #{e}"
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

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

# **get_payee_locations_by_payee**
> PayeeLocationsResponse get_payee_locations_by_payee(budget_id, payee_id)

List locations for a payee

Returns all payee locations for the specified payee

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List locations for a payee
  result = ynab.foobar.get_payee_locations_by_payee(budget_id, payee_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_locations_by_payee: #{e}"
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
 **payee_id** | [**String**](.md)| ID of payee | 

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

