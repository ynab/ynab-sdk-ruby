# YNAB::BudgetsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_budget_by_id**](BudgetsApi.md#get_budget_by_id) | **GET** /budgets/{budget_id} | Single budget
[**get_budget_settings_by_id**](BudgetsApi.md#get_budget_settings_by_id) | **GET** /budgets/{budget_id}/settings | Budget Settings
[**get_budgets**](BudgetsApi.md#get_budgets) | **GET** /budgets | List budgets


# **get_budget_by_id**
> BudgetDetailResponse get_budget_by_id(budget_id, opts)

Single budget

Returns a single budget with all related entities.  This resource is effectively a full budget export.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**BudgetDetailResponse**](BudgetDetailResponse.md)

# **get_budget_settings_by_id**
> BudgetSettingsResponse get_budget_settings_by_id(budget_id)

Budget Settings

Returns settings for a budget

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 

### Return type

[**BudgetSettingsResponse**](BudgetSettingsResponse.md)

# **get_budgets**
> BudgetSummaryResponse get_budgets

List budgets

Returns budgets list with summary information

### Parameters
This endpoint does not need any parameter.

### Return type

[**BudgetSummaryResponse**](BudgetSummaryResponse.md)

