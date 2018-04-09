# YnabApi::TransactionsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_create_transactions**](TransactionsApi.md#bulk_create_transactions) | **POST** /budgets/{budget_id}/transactions/bulk | Bulk create transactions
[**create_transaction**](TransactionsApi.md#create_transaction) | **POST** /budgets/{budget_id}/transactions | Create new transaction
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /budgets/{budget_id}/transactions | List transactions
[**get_transactions_by_account**](TransactionsApi.md#get_transactions_by_account) | **GET** /budgets/{budget_id}/accounts/{account_id}/transactions | List account transactions
[**get_transactions_by_category**](TransactionsApi.md#get_transactions_by_category) | **GET** /budgets/{budget_id}/categories/{category_id}/transactions | List category transactions
[**get_transactions_by_id**](TransactionsApi.md#get_transactions_by_id) | **GET** /budgets/{budget_id}/transactions/{transaction_id} | Single transaction
[**get_transactions_by_payee**](TransactionsApi.md#get_transactions_by_payee) | **GET** /budgets/{budget_id}/payees/{payee_id}/transactions | List payee transactions
[**update_transaction**](TransactionsApi.md#update_transaction) | **PUT** /budgets/{budget_id}/transactions/{transaction_id} | Updates an existing transaction


# **bulk_create_transactions**
> BulkResponse bulk_create_transactions(budget_id, transactions)

Bulk create transactions

Creates multiple transactions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transactions** | [**BulkTransactions**](BulkTransactions.md)| The list of Transactions to create. | 

### Return type

[**BulkResponse**](BulkResponse.md)

# **create_transaction**
> TransactionResponse create_transaction(budget_id, transaction)

Create new transaction

Creates a transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The Transaction to create. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

# **get_transactions**
> TransactionsResponse get_transactions(budget_id, opts)

List transactions

Returns budget transactions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 
 **type** | **String**| Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;) | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

# **get_transactions_by_account**
> TransactionsResponse get_transactions_by_account(budget_id, account_id, opts)

List account transactions

Returns all transactions for a specified account

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **account_id** | [**String**](.md)| The ID of the Account. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

# **get_transactions_by_category**
> HybridTransactionsResponse get_transactions_by_category(budget_id, category_id, opts)

List category transactions

Returns all transactions for a specified category

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **category_id** | [**String**](.md)| The ID of the Category. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)

# **get_transactions_by_id**
> TransactionResponse get_transactions_by_id(budget_id, transaction_id)

Single transaction

Returns a single transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction_id** | [**String**](.md)| The ID of the Transaction. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

# **get_transactions_by_payee**
> HybridTransactionsResponse get_transactions_by_payee(budget_id, payee_id, opts)

List payee transactions

Returns all transactions for a specified payee

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **payee_id** | [**String**](.md)| The ID of the Payee. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)

# **update_transaction**
> TransactionResponse update_transaction(budget_id, transaction_id, transaction)

Updates an existing transaction

Updates a transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction_id** | [**String**](.md)| The ID of the Transaction. | 
 **transaction** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The Transaction to update. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

