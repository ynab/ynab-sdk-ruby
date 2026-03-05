# YNAB::PlansApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_plan_by_id**](PlansApi.md#get_plan_by_id) | **GET** /plans/{plan_id} | Get a plan |
| [**get_plan_settings_by_id**](PlansApi.md#get_plan_settings_by_id) | **GET** /plans/{plan_id}/settings | Get plan settings |
| [**get_plans**](PlansApi.md#get_plans) | **GET** /plans | Get all plans |


## get_plan_by_id

> <PlanDetailResponse> get_plan_by_id(plan_id, opts)

Get a plan

Returns a single plan with all related entities.  This resource is effectively a full plan export.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**PlanDetailResponse**](PlanDetailResponse.md)


## get_plan_settings_by_id

> <PlanSettingsResponse> get_plan_settings_by_id(plan_id)

Get plan settings

Returns settings for a plan

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |

### Return type

[**PlanSettingsResponse**](PlanSettingsResponse.md)


## get_plans

> <PlanSummaryResponse> get_plans(opts)

Get all plans

Returns plans list with summary information

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_accounts** | **Boolean** | Whether to include the list of plan accounts | [optional] |

### Return type

[**PlanSummaryResponse**](PlanSummaryResponse.md)

