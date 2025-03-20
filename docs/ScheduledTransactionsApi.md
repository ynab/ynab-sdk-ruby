# YNAB::ScheduledTransactionsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_scheduled_transaction**](ScheduledTransactionsApi.md#create_scheduled_transaction) | **POST** /budgets/{budget_id}/scheduled_transactions | Create a single scheduled transaction |
| [**delete_scheduled_transaction**](ScheduledTransactionsApi.md#delete_scheduled_transaction) | **DELETE** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Deletes an existing scheduled transaction |
| [**get_scheduled_transaction_by_id**](ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | **GET** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Single scheduled transaction |
| [**get_scheduled_transactions**](ScheduledTransactionsApi.md#get_scheduled_transactions) | **GET** /budgets/{budget_id}/scheduled_transactions | List scheduled transactions |
| [**update_scheduled_transaction**](ScheduledTransactionsApi.md#update_scheduled_transaction) | **PUT** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Updates an existing scheduled transaction |


## create_scheduled_transaction

> <ScheduledTransactionResponse> create_scheduled_transaction(budget_id, data)

Create a single scheduled transaction

Creates a single scheduled transaction (a transaction with a future date).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **data** | [**PostScheduledTransactionWrapper**](PostScheduledTransactionWrapper.md) | The scheduled transaction to create |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## delete_scheduled_transaction

> <ScheduledTransactionResponse> delete_scheduled_transaction(budget_id, scheduled_transaction_id)

Deletes an existing scheduled transaction

Deletes a scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## get_scheduled_transaction_by_id

> <ScheduledTransactionResponse> get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)

Single scheduled transaction

Returns a single scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## get_scheduled_transactions

> <ScheduledTransactionsResponse> get_scheduled_transactions(budget_id, opts)

List scheduled transactions

Returns all scheduled transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**ScheduledTransactionsResponse**](ScheduledTransactionsResponse.md)


## update_scheduled_transaction

> <ScheduledTransactionResponse> update_scheduled_transaction(budget_id, scheduled_transaction_id, put_scheduled_transaction_wrapper)

Updates an existing scheduled transaction

Updates a single scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **budget_id** | **String** | The id of the budget. \&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.ynab.com/#oauth-default-budget). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |
| **put_scheduled_transaction_wrapper** | [**PutScheduledTransactionWrapper**](PutScheduledTransactionWrapper.md) | The scheduled transaction to update |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)

