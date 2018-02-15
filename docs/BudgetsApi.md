# YnabApi::BudgetsApi

All URIs are relative to *https://api.youneedabudget.com/papi/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_budget_by_id**](BudgetsApi.md#get_budget_by_id) | **GET** /budgets/{budget_id} | Single budget
[**get_budgets**](BudgetsApi.md#get_budgets) | **GET** /budgets | List budgets


# **get_budget_by_id**
> BudgetDetailResponse get_budget_by_id(budget_id, opts)

Single budget

Returns a single budget with all related entities.  This resource is effectively a full budget export.

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

api_instance = YnabApi::BudgetsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

opts = { 
  last_knowledge_of_server: 8.14 # Float | The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included.
}

begin
  #Single budget
  result = api_instance.get_budget_by_id(budget_id, opts)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling BudgetsApi->get_budget_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **last_knowledge_of_server** | **Float**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**BudgetDetailResponse**](BudgetDetailResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_budgets**
> BudgetSummaryResponse get_budgets

List budgets

Returns budgets list with summary information.

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

api_instance = YnabApi::BudgetsApi.new

begin
  #List budgets
  result = api_instance.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling BudgetsApi->get_budgets: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BudgetSummaryResponse**](BudgetSummaryResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



