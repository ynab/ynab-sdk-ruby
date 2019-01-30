# YNAB::CategoriesApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /budgets/{budget_id}/categories | List categories
[**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /budgets/{budget_id}/categories/{category_id} | Single category
[**get_month_category_by_id**](CategoriesApi.md#get_month_category_by_id) | **GET** /budgets/{budget_id}/months/{month}/categories/{category_id} | Single category for a specific budget month
[**update_month_category**](CategoriesApi.md#update_month_category) | **PATCH** /budgets/{budget_id}/months/{month}/categories/{category_id} | Update a category for a specific month


# **get_categories**
> CategoriesResponse get_categories(budget_id, opts)

List categories

Returns all categories grouped by category group.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**CategoriesResponse**](CategoriesResponse.md)

# **get_category_by_id**
> CategoryResponse get_category_by_id(budget_id, category_id)

Single category

Returns a single category.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **category_id** | [**String**](.md)| The id of the category | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

# **get_month_category_by_id**
> CategoryResponse get_month_category_by_id(budget_id, month, category_id)

Single category for a specific budget month

Returns a single category for a specific budget month.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **month** | **Date**| The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) | 
 **category_id** | [**String**](.md)| The id of the category | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

# **update_month_category**
> CategoryResponse update_month_category(budget_id, month, category_id, data)

Update a category for a specific month

Update a category for a specific month

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **month** | **Date**| The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) | 
 **category_id** | [**String**](.md)| The id of the category | 
 **data** | [**SaveMonthCategoryWrapper**](SaveMonthCategoryWrapper.md)| The category to update | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

