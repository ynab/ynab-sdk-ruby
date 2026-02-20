# YNAB::AccountsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_account**](AccountsApi.md#create_account) | **POST** /budgets/{plan_id}/accounts | Create an account |
| [**get_account_by_id**](AccountsApi.md#get_account_by_id) | **GET** /budgets/{plan_id}/accounts/{account_id} | Get an account |
| [**get_accounts**](AccountsApi.md#get_accounts) | **GET** /budgets/{plan_id}/accounts | Get all accounts |


## create_account

> <AccountResponse> create_account(plan_id, data)

Create an account

Creates a new account

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan (\&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan) |  |
| **data** | [**PostAccountWrapper**](PostAccountWrapper.md) | The account to create. |  |

### Return type

[**AccountResponse**](AccountResponse.md)


## get_account_by_id

> <AccountResponse> get_account_by_id(plan_id, account_id)

Get an account

Returns a single account

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **account_id** | **String** | The id of the account |  |

### Return type

[**AccountResponse**](AccountResponse.md)


## get_accounts

> <AccountsResponse> get_accounts(plan_id, opts)

Get all accounts

Returns all accounts

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**AccountsResponse**](AccountsResponse.md)

