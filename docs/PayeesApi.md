# YnabApi::PayeesApi

All URIs are relative to *https://api.youneedabudget.com/papi/v1*

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
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::PayeesApi.new

budget_id = "budget_id_example" # String | ID of budget

payee_id = "payee_id_example" # String | ID of payee


begin
  #Single payee
  result = api_instance.get_payee_by_id(budget_id, payee_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeesApi->get_payee_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| ID of budget | 
 **payee_id** | [**String**](.md)| ID of payee | 

### Return type

[**PayeeResponse**](PayeeResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payees**
> PayeesResponse get_payees(budget_id)

List payees

Returns all payees

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::PayeesApi.new

budget_id = "budget_id_example" # String | ID of budget


begin
  #List payees
  result = api_instance.get_payees(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeesApi->get_payees: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| ID of budget | 

### Return type

[**PayeesResponse**](PayeesResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



