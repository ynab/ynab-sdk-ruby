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
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::PayeeLocationsApi.new

budget_id = 'budget_id_example' # String | The ID of the Budget.

payee_location_id = 'payee_location_id_example' # String | ID of payee location


begin
  #Single payee location
  result = api_instance.get_payee_location_by_id(budget_id, payee_location_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_location_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **payee_location_id** | [**String**](.md)| ID of payee location | 

### Return type

[**PayeeLocationResponse**](PayeeLocationResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payee_locations**
> PayeeLocationsResponse get_payee_locations(budget_id)

List payee locations

Returns all payee locations

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

api_instance = YnabApi::PayeeLocationsApi.new

budget_id = 'budget_id_example' # String | The ID of the Budget.


begin
  #List payee locations
  result = api_instance.get_payee_locations(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_locations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_payee_locations_by_payee**
> PayeeLocationsResponse get_payee_locations_by_payee(budget_id, payee_id)

List locations for a payee

Returns all payee locations for the specified payee

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

api_instance = YnabApi::PayeeLocationsApi.new

budget_id = 'budget_id_example' # String | The ID of the Budget.

payee_id = 'payee_id_example' # String | ID of payee


begin
  #List locations for a payee
  result = api_instance.get_payee_locations_by_payee(budget_id, payee_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling PayeeLocationsApi->get_payee_locations_by_payee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **payee_id** | [**String**](.md)| ID of payee | 

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



