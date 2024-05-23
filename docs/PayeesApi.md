# YNAB::PayeesApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_payee_by_id**](PayeesApi.md#get_payee_by_id) | **GET** /budgets/{budget_id}/payees/{payee_id} | Single payee |
| [**get_payees**](PayeesApi.md#get_payees) | **GET** /budgets/{budget_id}/payees | List payees |
| [**update_payee**](PayeesApi.md#update_payee) | **PATCH** /budgets/{budget_id}/payees/{payee_id} | Update a payee |


## get_payee_by_id

> <PayeeResponse> get_payee_by_id(budget_id, payee_id)

Single payee

Returns a single payee

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **payee_id** | **String** | The id of the payee |  |

### Return type

[**PayeeResponse**](PayeeResponse.md)


## get_payees

> <PayeesResponse> get_payees(budget_id, opts)

List payees

Returns all payees

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**PayeesResponse**](PayeesResponse.md)


## update_payee

> <SavePayeeResponse> update_payee(budget_id, payee_id, data)

Update a payee

Update a payee

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **payee_id** | **String** | The id of the payee |  |
| **data** | [**PatchPayeeWrapper**](PatchPayeeWrapper.md) | The payee to update |  |

### Return type

[**SavePayeeResponse**](SavePayeeResponse.md)

