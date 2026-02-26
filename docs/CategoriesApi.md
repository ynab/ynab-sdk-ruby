# YNAB::CategoriesApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_category**](CategoriesApi.md#create_category) | **POST** /budgets/{plan_id}/categories | Create a category |
| [**create_category_group**](CategoriesApi.md#create_category_group) | **POST** /budgets/{plan_id}/category_groups | Create a category group |
| [**get_categories**](CategoriesApi.md#get_categories) | **GET** /budgets/{plan_id}/categories | Get all categories |
| [**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /budgets/{plan_id}/categories/{category_id} | Get a category |
| [**get_month_category_by_id**](CategoriesApi.md#get_month_category_by_id) | **GET** /budgets/{plan_id}/months/{month}/categories/{category_id} | Get a category for a specific plan month |
| [**update_category**](CategoriesApi.md#update_category) | **PATCH** /budgets/{plan_id}/categories/{category_id} | Update a category |
| [**update_category_group**](CategoriesApi.md#update_category_group) | **PATCH** /budgets/{plan_id}/category_groups/{category_group_id} | Update a category group |
| [**update_month_category**](CategoriesApi.md#update_month_category) | **PATCH** /budgets/{plan_id}/months/{month}/categories/{category_id} | Update a category for a specific month |


## create_category

> <SaveCategoryResponse> create_category(plan_id, data)

Create a category

Creates a new category

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan (\&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan) |  |
| **data** | [**PostCategoryWrapper**](PostCategoryWrapper.md) | The category to create. |  |

### Return type

[**SaveCategoryResponse**](SaveCategoryResponse.md)


## create_category_group

> <SaveCategoryGroupResponse> create_category_group(plan_id, data)

Create a category group

Creates a new category group

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan (\&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan) |  |
| **data** | [**PostCategoryGroupWrapper**](PostCategoryGroupWrapper.md) | The category group to create. |  |

### Return type

[**SaveCategoryGroupResponse**](SaveCategoryGroupResponse.md)


## get_categories

> <CategoriesResponse> get_categories(plan_id, opts)

Get all categories

Returns all categories grouped by category group.  Amounts (assigned, activity, available, etc.) are specific to the current plan month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**CategoriesResponse**](CategoriesResponse.md)


## get_category_by_id

> <CategoryResponse> get_category_by_id(plan_id, category_id)

Get a category

Returns a single category.  Amounts (assigned, activity, available, etc.) are specific to the current plan month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **category_id** | **String** | The id of the category |  |

### Return type

[**CategoryResponse**](CategoryResponse.md)


## get_month_category_by_id

> <CategoryResponse> get_month_category_by_id(plan_id, month, category_id)

Get a category for a specific plan month

Returns a single category for a specific plan month.  Amounts (assigned, activity, available, etc.) are specific to the current plan month (UTC).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **Date** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |
| **category_id** | **String** | The id of the category |  |

### Return type

[**CategoryResponse**](CategoryResponse.md)


## update_category

> <SaveCategoryResponse> update_category(plan_id, category_id, data)

Update a category

Update a category

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **category_id** | **String** | The id of the category |  |
| **data** | [**PatchCategoryWrapper**](PatchCategoryWrapper.md) | The category to update |  |

### Return type

[**SaveCategoryResponse**](SaveCategoryResponse.md)


## update_category_group

> <SaveCategoryGroupResponse> update_category_group(plan_id, category_group_id, data)

Update a category group

Update a category group

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **category_group_id** | **String** | The id of the category group |  |
| **data** | [**PatchCategoryGroupWrapper**](PatchCategoryGroupWrapper.md) | The category group to update |  |

### Return type

[**SaveCategoryGroupResponse**](SaveCategoryGroupResponse.md)


## update_month_category

> <SaveCategoryResponse> update_month_category(plan_id, month, category_id, data)

Update a category for a specific month

Update a category for a specific month.  Only `budgeted` (assigned) amount can be updated.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **Date** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |
| **category_id** | **String** | The id of the category |  |
| **data** | [**PatchMonthCategoryWrapper**](PatchMonthCategoryWrapper.md) | The category to update.  Only &#x60;budgeted&#x60; (assigned) amount can be updated and any other fields specified will be ignored. |  |

### Return type

[**SaveCategoryResponse**](SaveCategoryResponse.md)

