# YnabApi::UserApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_user**](UserApi.md#get_user) | **GET** /user | User info


# **get_user**
> UserResponse get_user

User info

Returns authenticated user information.

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

api_instance = YnabApi::UserApi.new

begin
  #User info
  result = api_instance.get_user
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



