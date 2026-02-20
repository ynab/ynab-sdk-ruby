# YNAB::PayeeLocationsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payee_location_by_id**](PayeeLocationsApi.md#get_payee_location_by_id) | **GET** /budgets/{plan_id}/payee_locations/{payee_location_id} | Get a payee location |
| [**get_payee_locations**](PayeeLocationsApi.md#get_payee_locations) | **GET** /budgets/{plan_id}/payee_locations | Get all payee locations |
| [**get_payee_locations_by_payee**](PayeeLocationsApi.md#get_payee_locations_by_payee) | **GET** /budgets/{plan_id}/payees/{payee_id}/payee_locations | Get all locations for a payee |


## get_payee_location_by_id

> <PayeeLocationResponse> get_payee_location_by_id(plan_id, payee_location_id)

Get a payee location

Returns a single payee location

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **payee_location_id** | **String** | id of payee location |  |

### Return type

[**PayeeLocationResponse**](PayeeLocationResponse.md)


## get_payee_locations

> <PayeeLocationsResponse> get_payee_locations(plan_id)

Get all payee locations

Returns all payee locations

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)


## get_payee_locations_by_payee

> <PayeeLocationsResponse> get_payee_locations_by_payee(plan_id, payee_id)

Get all locations for a payee

Returns all payee locations for a specified payee

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **payee_id** | **String** | id of payee |  |

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

