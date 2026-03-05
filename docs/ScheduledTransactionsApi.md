# YNAB::ScheduledTransactionsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_scheduled_transaction**](ScheduledTransactionsApi.md#create_scheduled_transaction) | **POST** /plans/{plan_id}/scheduled_transactions | Create a scheduled transaction |
| [**delete_scheduled_transaction**](ScheduledTransactionsApi.md#delete_scheduled_transaction) | **DELETE** /plans/{plan_id}/scheduled_transactions/{scheduled_transaction_id} | Delete a scheduled transaction |
| [**get_scheduled_transaction_by_id**](ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | **GET** /plans/{plan_id}/scheduled_transactions/{scheduled_transaction_id} | Get a scheduled transaction |
| [**get_scheduled_transactions**](ScheduledTransactionsApi.md#get_scheduled_transactions) | **GET** /plans/{plan_id}/scheduled_transactions | Get all scheduled transactions |
| [**update_scheduled_transaction**](ScheduledTransactionsApi.md#update_scheduled_transaction) | **PUT** /plans/{plan_id}/scheduled_transactions/{scheduled_transaction_id} | Update a scheduled transaction |


## create_scheduled_transaction

> <ScheduledTransactionResponse> create_scheduled_transaction(plan_id, data)

Create a scheduled transaction

Creates a single scheduled transaction (a transaction with a future date).

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **data** | [**PostScheduledTransactionWrapper**](PostScheduledTransactionWrapper.md) | The scheduled transaction to create |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## delete_scheduled_transaction

> <ScheduledTransactionResponse> delete_scheduled_transaction(plan_id, scheduled_transaction_id)

Delete a scheduled transaction

Deletes a scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## get_scheduled_transaction_by_id

> <ScheduledTransactionResponse> get_scheduled_transaction_by_id(plan_id, scheduled_transaction_id)

Get a scheduled transaction

Returns a single scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)


## get_scheduled_transactions

> <ScheduledTransactionsResponse> get_scheduled_transactions(plan_id, opts)

Get all scheduled transactions

Returns all scheduled transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**ScheduledTransactionsResponse**](ScheduledTransactionsResponse.md)


## update_scheduled_transaction

> <ScheduledTransactionResponse> update_scheduled_transaction(plan_id, scheduled_transaction_id, put_scheduled_transaction_wrapper)

Update a scheduled transaction

Updates a single scheduled transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **scheduled_transaction_id** | **String** | The id of the scheduled transaction |  |
| **put_scheduled_transaction_wrapper** | [**PutScheduledTransactionWrapper**](PutScheduledTransactionWrapper.md) | The scheduled transaction to update |  |

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)

