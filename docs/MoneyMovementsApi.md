# YNAB::MoneyMovementsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_money_movement_groups**](MoneyMovementsApi.md#get_money_movement_groups) | **GET** /plans/{plan_id}/money_movement_groups | Get all money movement groups |
| [**get_money_movement_groups_by_month**](MoneyMovementsApi.md#get_money_movement_groups_by_month) | **GET** /plans/{plan_id}/months/{month}/money_movement_groups | Get money movement groups for a plan month |
| [**get_money_movements**](MoneyMovementsApi.md#get_money_movements) | **GET** /plans/{plan_id}/money_movements | Get all money movements |
| [**get_money_movements_by_month**](MoneyMovementsApi.md#get_money_movements_by_month) | **GET** /plans/{plan_id}/months/{month}/money_movements | Get money movements for a plan month |


## get_money_movement_groups

> <MoneyMovementGroupsResponse> get_money_movement_groups(plan_id)

Get all money movement groups

Returns all money movement groups

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |

### Return type

[**MoneyMovementGroupsResponse**](MoneyMovementGroupsResponse.md)


## get_money_movement_groups_by_month

> <MoneyMovementGroupsResponse> get_money_movement_groups_by_month(plan_id, month)

Get money movement groups for a plan month

Returns all money movement groups for a specific month

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **Date** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |

### Return type

[**MoneyMovementGroupsResponse**](MoneyMovementGroupsResponse.md)


## get_money_movements

> <MoneyMovementsResponse> get_money_movements(plan_id)

Get all money movements

Returns all money movements

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |

### Return type

[**MoneyMovementsResponse**](MoneyMovementsResponse.md)


## get_money_movements_by_month

> <MoneyMovementsResponse> get_money_movements_by_month(plan_id, month)

Get money movements for a plan month

Returns all money movements for a specific month

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **Date** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |

### Return type

[**MoneyMovementsResponse**](MoneyMovementsResponse.md)

