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
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #User info
  result = ynab.foobar.get_user
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling UserApi->get_user: #{e}"
end

begin
  result = ynab.budgets.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserResponse**](UserResponse.md)

