# YNAB::TransactionsApi

All URIs are relative to *https://api.ynab.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_transaction**](TransactionsApi.md#create_transaction) | **POST** /plans/{plan_id}/transactions | Create a single transaction or multiple transactions |
| [**delete_transaction**](TransactionsApi.md#delete_transaction) | **DELETE** /plans/{plan_id}/transactions/{transaction_id} | Delete a transaction |
| [**get_transaction_by_id**](TransactionsApi.md#get_transaction_by_id) | **GET** /plans/{plan_id}/transactions/{transaction_id} | Get a transaction |
| [**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /plans/{plan_id}/transactions | Get all transactions |
| [**get_transactions_by_account**](TransactionsApi.md#get_transactions_by_account) | **GET** /plans/{plan_id}/accounts/{account_id}/transactions | Get all account transactions |
| [**get_transactions_by_category**](TransactionsApi.md#get_transactions_by_category) | **GET** /plans/{plan_id}/categories/{category_id}/transactions | Get all category transactions |
| [**get_transactions_by_month**](TransactionsApi.md#get_transactions_by_month) | **GET** /plans/{plan_id}/months/{month}/transactions | Get all plan month transactions |
| [**get_transactions_by_payee**](TransactionsApi.md#get_transactions_by_payee) | **GET** /plans/{plan_id}/payees/{payee_id}/transactions | Get all payee transactions |
| [**import_transactions**](TransactionsApi.md#import_transactions) | **POST** /plans/{plan_id}/transactions/import | Import transactions |
| [**update_transaction**](TransactionsApi.md#update_transaction) | **PUT** /plans/{plan_id}/transactions/{transaction_id} | Update a transaction |
| [**update_transactions**](TransactionsApi.md#update_transactions) | **PATCH** /plans/{plan_id}/transactions | Update multiple transactions |


## create_transaction

> <SaveTransactionsResponse> create_transaction(plan_id, data)

Create a single transaction or multiple transactions

Creates a single transaction or multiple transactions.  If you provide a body containing a `transaction` object, a single transaction will be created and if you provide a body containing a `transactions` array, multiple transactions will be created.  Scheduled transactions (transactions with a future date) cannot be created on this endpoint.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **data** | [**PostTransactionsWrapper**](PostTransactionsWrapper.md) | The transaction or transactions to create.  To create a single transaction you can specify a value for the &#x60;transaction&#x60; object and to create multiple transactions you can specify an array of &#x60;transactions&#x60;.  It is expected that you will only provide a value for one of these objects. |  |

### Return type

[**SaveTransactionsResponse**](SaveTransactionsResponse.md)


## delete_transaction

> <TransactionResponse> delete_transaction(plan_id, transaction_id)

Delete a transaction

Deletes a transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **transaction_id** | **String** | The id of the transaction |  |

### Return type

[**TransactionResponse**](TransactionResponse.md)


## get_transaction_by_id

> <TransactionResponse> get_transaction_by_id(plan_id, transaction_id)

Get a transaction

Returns a single transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **transaction_id** | **String** | The id of the transaction |  |

### Return type

[**TransactionResponse**](TransactionResponse.md)


## get_transactions

> <TransactionsResponse> get_transactions(plan_id, opts)

Get all transactions

Returns plan transactions, excluding any pending transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **since_date** | **Date** | If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] |
| **type** | **String** | If specified, only transactions of the specified type will be included. \&quot;uncategorized\&quot; and \&quot;unapproved\&quot; are currently supported. | [optional] |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**TransactionsResponse**](TransactionsResponse.md)


## get_transactions_by_account

> <TransactionsResponse> get_transactions_by_account(plan_id, account_id, opts)

Get all account transactions

Returns all transactions for a specified account, excluding any pending transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **account_id** | **String** | The id of the account |  |
| **since_date** | **Date** | If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] |
| **type** | **String** | If specified, only transactions of the specified type will be included. \&quot;uncategorized\&quot; and \&quot;unapproved\&quot; are currently supported. | [optional] |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**TransactionsResponse**](TransactionsResponse.md)


## get_transactions_by_category

> <HybridTransactionsResponse> get_transactions_by_category(plan_id, category_id, opts)

Get all category transactions

Returns all transactions for a specified category, excluding any pending transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **category_id** | **String** | The id of the category |  |
| **since_date** | **Date** | If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] |
| **type** | **String** | If specified, only transactions of the specified type will be included. \&quot;uncategorized\&quot; and \&quot;unapproved\&quot; are currently supported. | [optional] |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)


## get_transactions_by_month

> <TransactionsResponse> get_transactions_by_month(plan_id, month, opts)

Get all plan month transactions

Returns all transactions for a specified month, excluding any pending transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **month** | **String** | The plan month in ISO format (e.g. 2016-12-01) (\&quot;current\&quot; can also be used to specify the current calendar month (UTC)) |  |
| **since_date** | **Date** | If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] |
| **type** | **String** | If specified, only transactions of the specified type will be included. \&quot;uncategorized\&quot; and \&quot;unapproved\&quot; are currently supported. | [optional] |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**TransactionsResponse**](TransactionsResponse.md)


## get_transactions_by_payee

> <HybridTransactionsResponse> get_transactions_by_payee(plan_id, payee_id, opts)

Get all payee transactions

Returns all transactions for a specified payee, excluding any pending transactions

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **payee_id** | **String** | The id of the payee |  |
| **since_date** | **Date** | If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] |
| **type** | **String** | If specified, only transactions of the specified type will be included. \&quot;uncategorized\&quot; and \&quot;unapproved\&quot; are currently supported. | [optional] |
| **last_knowledge_of_server** | **Integer** | The starting server knowledge.  If provided, only entities that have changed since &#x60;last_knowledge_of_server&#x60; will be included. | [optional] |

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)


## import_transactions

> <TransactionsImportResponse> import_transactions(plan_id)

Import transactions

Imports available transactions on all linked accounts for the given plan.  Linked accounts allow transactions to be imported directly from a specified financial institution and this endpoint initiates that import.  Sending a request to this endpoint is the equivalent of clicking \"Import\" on each account in the web application or tapping the \"New Transactions\" banner in the mobile applications.  The response for this endpoint contains the transaction ids that have been imported.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |

### Return type

[**TransactionsImportResponse**](TransactionsImportResponse.md)


## update_transaction

> <TransactionResponse> update_transaction(plan_id, transaction_id, data)

Update a transaction

Updates a single transaction

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **transaction_id** | **String** | The id of the transaction |  |
| **data** | [**PutTransactionWrapper**](PutTransactionWrapper.md) | The transaction to update |  |

### Return type

[**TransactionResponse**](TransactionResponse.md)


## update_transactions

> <SaveTransactionsResponse> update_transactions(plan_id, data)

Update multiple transactions

Updates multiple transactions, by `id` or `import_id`.

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **plan_id** | **String** | The id of the plan. \&quot;last-used\&quot; can be used to specify the last used plan and \&quot;default\&quot; can be used if default plan selection is enabled (see: https://api.ynab.com/#oauth-default-plan). |  |
| **data** | [**PatchTransactionsWrapper**](PatchTransactionsWrapper.md) | The transactions to update. Each transaction must have either an &#x60;id&#x60; or &#x60;import_id&#x60; specified. If &#x60;id&#x60; is specified as null an &#x60;import_id&#x60; value can be provided which will allow transaction(s) to be updated by its &#x60;import_id&#x60;. If an &#x60;id&#x60; is specified, it will always be used for lookup.  You should not specify both &#x60;id&#x60; and &#x60;import_id&#x60;.  Updating an &#x60;import_id&#x60; on an existing transaction is not allowed; if an &#x60;import_id&#x60; is specified, it will only be used to lookup the transaction. |  |

### Return type

[**SaveTransactionsResponse**](SaveTransactionsResponse.md)

