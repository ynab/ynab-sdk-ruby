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
[**update_transactions**](TransactionsApi.md#update_transactions) | **PATCH** /budgets/{budget_id}/transactions | Update multiple transactions


# **create_transaction**
> SaveTransactionsResponse create_transaction(budget_id, data)

Create a single transaction or multiple transactions

Creates a single transaction or multiple transactions.  If you provide a body containing a 'transaction' object, a single transaction will be created and if you provide a body containing a 'transactions' array, multiple transactions will be created.  Scheduled transactions cannot be created on this endpoint.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **data** | [**SaveTransactionsWrapper**](SaveTransactionsWrapper.md)| The transaction or transactions to create.  To create a single transaction you can specify a value for the &#39;transaction&#39; object and to create multiple transactions you can specify an array of &#39;transactions&#39;.  It is expected that you will only provide a value for one of these objects. | 

### Return type

[**SaveTransactionsResponse**](SaveTransactionsResponse.md)

# **get_transaction_by_id**
> TransactionResponse get_transaction_by_id(budget_id, transaction_id)

Single transaction

Returns a single transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **transaction_id** | **String**| The id of the transaction | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

# **get_transactions**
> TransactionsResponse get_transactions(budget_id, opts)

List transactions

Returns budget transactions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **since_date** | **Date**| If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] 
 **type** | **String**| If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported. | [optional] 
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
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **account_id** | **String**| The id of the account | 
 **since_date** | **Date**| If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] 
 **type** | **String**| If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported. | [optional] 
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
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **category_id** | **String**| The id of the category | 
 **since_date** | **Date**| If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] 
 **type** | **String**| If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported. | [optional] 
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
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **payee_id** | **String**| The id of the payee | 
 **since_date** | **Date**| If specified, only transactions on or after this date will be included.  The date should be ISO formatted (e.g. 2016-12-30). | [optional] 
 **type** | **String**| If specified, only transactions of the specified type will be included. &#39;uncategorized&#39; and &#39;unapproved&#39; are currently supported. | [optional] 
 **last_knowledge_of_server** | **Integer**| The starting server knowledge.  If provided, only entities that have changed since last_knowledge_of_server will be included. | [optional] 

### Return type

[**HybridTransactionsResponse**](HybridTransactionsResponse.md)

# **update_transaction**
> TransactionResponse update_transaction(budget_id, transaction_id, data)

Updates an existing transaction

Updates a transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **transaction_id** | **String**| The id of the transaction | 
 **data** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The transaction to update | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

# **update_transactions**
> SaveTransactionsResponse update_transactions(budget_id, data)

Update multiple transactions

Updates multiple transactions, by 'id' or 'import_id'.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | **String**| The id of the budget (\&quot;last-used\&quot; can be used to specify the last used budget and \&quot;default\&quot; can be used if default budget selection is enabled (see: https://api.youneedabudget.com/#oauth-default-budget) | 
 **data** | [**UpdateTransactionsWrapper**](UpdateTransactionsWrapper.md)| The transactions to update. Each transaction must have either an &#39;id&#39; or &#39;import_id&#39; specified. If &#39;id&#39; is specified as null an &#39;import_id&#39; value can be provided which will allow transaction(s) to be updated by their import_id. If an id is specified, it will always be used for lookup. | 

### Return type

[**SaveTransactionsResponse**](SaveTransactionsResponse.md)

