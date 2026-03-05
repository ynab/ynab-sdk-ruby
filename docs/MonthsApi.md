# YNAB::MonthsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_plan_month**](MonthsApi.md#get_plan_month) | **GET** /plans/{plan_id}/months/{month} | Get a plan month |
| [**get_plan_months**](MonthsApi.md#get_plan_months) | **GET** /plans/{plan_id}/months | Get all plan months |


## get_plan_month

> <MonthDetailResponse> get_plan_month(plan_id, month)

Get a plan month

Returns a single plan month

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **Date** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |

### Return type

[**MonthDetailResponse**](MonthDetailResponse.md)


## get_plan_months

> <MonthSummariesResponse> get_plan_months(plan_id, opts)

Get all plan months

Returns all plan months

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**MonthSummariesResponse**](MonthSummariesResponse.md)

