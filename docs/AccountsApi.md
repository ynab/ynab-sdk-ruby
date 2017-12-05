# YnabApi::AccountsApi

All URIs are relative to *https://localhost/papi/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_by_id**](AccountsApi.md#get_account_by_id) | **GET** /budgets/{budget_id}/accounts/{account_id} | Single account
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /budgets/{budget_id}/accounts | Account list


# **get_account_by_id**
> AccountResponse get_account_by_id(budget_id, account_id)

Single account

Returns a single account

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

api_instance = YnabApi::AccountsApi.new

budget_id = "budget_id_example" # String | ID of budget

account_id = "account_id_example" # String | ID of account


begin
  #Single account
  result = api_instance.get_account_by_id(budget_id, account_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling AccountsApi->get_account_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| ID of budget | 
 **account_id** | **String**| ID of account | 

### Return type

[**AccountResponse**](AccountResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_accounts**
> AccountsResponse get_accounts(budget_id)

Account list

Returns all accounts

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

api_instance = YnabApi::AccountsApi.new

budget_id = "budget_id_example" # String | ID of budget


begin
  #Account list
  result = api_instance.get_accounts(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling AccountsApi->get_accounts: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| ID of budget | 

### Return type

[**AccountsResponse**](AccountsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



