# YnabApi::MonthsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_budget_month**](MonthsApi.md#get_budget_month) | **GET** /budgets/{budget_id}/months/{month} | Single budget month
[**get_budget_months**](MonthsApi.md#get_budget_months) | **GET** /budgets/{budget_id}/months | List budget months


# **get_budget_month**
> MonthDetailResponse get_budget_month(budget_id, month)

Single budget month

Returns a single budget month

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #Single budget month
  result = ynab.foobar.get_budget_month(budget_id, month)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling MonthsApi->get_budget_month: #{e}"
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
 **month** | **Date**| The Budget Month.  \&quot;current\&quot; can also be used to specify the current calendar month (UTC). | 

### Return type

[**MonthDetailResponse**](MonthDetailResponse.md)

# **get_budget_months**
> MonthSummariesResponse get_budget_months(budget_id)

List budget months

Returns all budget months

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List budget months
  result = ynab.foobar.get_budget_months(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling MonthsApi->get_budget_months: #{e}"
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

[**MonthSummariesResponse**](MonthSummariesResponse.md)

