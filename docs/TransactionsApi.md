# YNAB::TransactionsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_transaction**](TransactionsApi.md#create_transaction) | **POST** /budgets/{budget_id}/transactions | Create a single transaction or multiple transactions
[**get_transaction_by_id**](TransactionsApi.md#get_transaction_by_id) | **GET** /budgets/{budget_id}/transactions/{transaction_id} | Single transaction
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /budgets/{budget_id}/transactions | List transactions
[**get_transactions_by_account**](TransactionsApi.md#get_transactions_by_account) | **GET** /budgets/{budget_id}/accounts/{account_id}/transactions | List account transactions
[**get_transactions_by_category**](TransactionsApi.md#get_transactions_by_category) | **GET** /budgets/{budget_id}/categories/{category_id}/transactions | List category transactions
[**get_transactions_by_payee**](TransactionsApi.md#get_transactions_by_payee) | **GET** /budgets/{budget_id}/payees/{payee_id}/transactions | List payee transactions
[**update_transaction**](TransactionsApi.md#update_transaction) | **PUT** /budgets/{budget_id}/transactions/{transaction_id} | Updates an existing transaction


# **create_transaction**
> SaveTransactionsResponse create_transaction(budget_id, save_transactions)

Create a single transaction or multiple transactions

Creates a single transaction or multiple transactions.  If you provide a body containing a 'transaction' object, a single transaction will be created and if you provide a body containing a 'transactions' array, multiple transactions will be created.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **save_transactions** | [**SaveTransactionsWrapper**](SaveTransactionsWrapper.md)| The transaction or transactions to create | 

### Return type

[**SaveTransactionsResponse**](SaveTransactionsResponse.md)

# **get_transaction_by_id**
> TransactionResponse get_transaction_by_id(budget_id, transaction_id)

Single transaction

Returns a single transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **transaction_id** | [**String**](.md)| The id of the transaction | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

# **get_transactions**
> TransactionsResponse get_transactions(budget_id, opts)

List transactions

Returns budget transactions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 
 **type** | **String**| Only return transactions of a certain type (&#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported) | [optional] 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

# **get_transactions_by_account**
> TransactionsResponse get_transactions_by_account(budget_id, account_id, opts)

List account transactions

Returns all transactions for a specified account

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **account_id** | [**String**](.md)| The id of the account | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 
 **type** | **String**| Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;) | [optional] 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

# **get_transactions_by_category**
> HybridTransactionsResponse get_transactions_by_category(budget_id, category_id, opts)

List category transactions

Returns all transactions for a specified category

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **category_id** | [**String**](.md)| The id of the category | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 
 **type** | **String**| Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;) | [optional] 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)

# **get_transactions_by_payee**
> HybridTransactionsResponse get_transactions_by_payee(budget_id, payee_id, opts)

List payee transactions

Returns all transactions for a specified payee

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **payee_id** | [**String**](.md)| The id of the payee | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 
 **type** | **String**| Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;) | [optional] 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)

# **update_transaction**
> TransactionResponse update_transaction(budget_id, transaction_id, transaction)

Updates an existing transaction

Updates a transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **transaction_id** | [**String**](.md)| The id of the transaction | 
 **transaction** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The transaction to update | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

