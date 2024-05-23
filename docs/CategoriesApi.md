# YNAB::CategoriesApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_categories**](CategoriesApi.md#get_categories) | **GET** /budgets/{budget_id}/categories | List categories |
| [**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /budgets/{budget_id}/categories/{category_id} | Single category |
| [**get_month_category_by_id**](CategoriesApi.md#get_month_category_by_id) | **GET** /budgets/{budget_id}/months/{month}/categories/{category_id} | Single category for a specific budget month |
| [**update_category**](CategoriesApi.md#update_category) | **PATCH** /budgets/{budget_id}/categories/{category_id} | Update a category |
| [**update_month_category**](CategoriesApi.md#update_month_category) | **PATCH** /budgets/{budget_id}/months/{month}/categories/{category_id} | Update a category for a specific month |


## get_categories

> <CategoriesResponse> get_categories(budget_id, opts)

List categories

Returns all categories grouped by category group.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**CategoriesResponse**](CategoriesResponse.md)


## get_category_by_id

> <CategoryResponse> get_category_by_id(budget_id, category_id)

Single category

Returns a single category.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **category_id** | **String** | The id of the category |  |

### Return type

[**CategoryResponse**](CategoryResponse.md)


## get_month_category_by_id

> <CategoryResponse> get_month_category_by_id(budget_id, month, category_id)

Single category for a specific budget month

Returns a single category for a specific budget month.  Amounts (budgeted, activity, balance, etc.) are specific to the current budget month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **month** | **Date** | The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |
| **category_id** | **String** | The id of the category |  |

### Return type

[**CategoryResponse**](CategoryResponse.md)


## update_category

> <SaveCategoryResponse> update_category(budget_id, category_id, data)

Update a category

Update a category

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **category_id** | **String** | The id of the category |  |
| **data** | [**PatchCategoryWrapper**](PatchCategoryWrapper.md) | The category to update |  |

### Return type

[**SaveCategoryResponse**](SaveCategoryResponse.md)


## update_month_category

> <SaveCategoryResponse> update_month_category(budget_id, month, category_id, data)

Update a category for a specific month

Update a category for a specific month.  Only `budgeted` amount can be updated.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **month** | **Date** | The budget month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |
| **category_id** | **String** | The id of the category |  |
| **data** | [**PatchMonthCategoryWrapper**](PatchMonthCategoryWrapper.md) | The category to update.  Only &#x60;budgeted&#x60; amount can be updated and any other fields specified will be ignored. |  |

### Return type

[**SaveCategoryResponse**](SaveCategoryResponse.md)

