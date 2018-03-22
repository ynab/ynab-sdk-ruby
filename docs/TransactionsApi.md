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

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

transactions = YnabApi::BulkTransactions.new # BulkTransactions | The list of Transactions to create.


begin
  #Bulk create transactions
  result = api_instance.bulk_create_transactions(budget_id, transactions)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->bulk_create_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transactions** | [**BulkTransactions**](BulkTransactions.md)| The list of Transactions to create. | 

### Return type

[**BulkResponse**](BulkResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **create_transaction**
> TransactionResponse create_transaction(budget_id, transaction)

Create new transaction

Creates a transaction

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

transaction = YnabApi::SaveTransactionWrapper.new # SaveTransactionWrapper | The Transaction to create.


begin
  #Create new transaction
  result = api_instance.create_transaction(budget_id, transaction)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->create_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The Transaction to create. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions**
> TransactionsResponse get_transactions(budget_id, opts)

List transactions

Returns budget transactions

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

opts = { 
  since_date: Date.parse("2013-10-20"), # Date | Only return transactions on or after this date.
  type: "type_example" # String | Only return transactions of a certain type (i.e. 'uncategorized', 'unapproved')
}

begin
  #List transactions
  result = api_instance.get_transactions(budget_id, opts)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->get_transactions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 
 **type** | **String**| Only return transactions of a certain type (i.e. &#39;uncategorized&#39;, &#39;unapproved&#39;) | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_account**
> TransactionsResponse get_transactions_by_account(budget_id, account_id, opts)

List account transactions

Returns all transactions for a specified account

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

account_id = "account_id_example" # String | The ID of the Account.

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date.
}

begin
  #List account transactions
  result = api_instance.get_transactions_by_account(budget_id, account_id, opts)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->get_transactions_by_account: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **account_id** | [**String**](.md)| The ID of the Account. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_category**
> TransactionsResponse get_transactions_by_category(budget_id, category_id, opts)

List category transactions

Returns all transactions for a specified category

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

category_id = "category_id_example" # String | The ID of the Category.

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date.
}

begin
  #List category transactions
  result = api_instance.get_transactions_by_category(budget_id, category_id, opts)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->get_transactions_by_category: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **category_id** | [**String**](.md)| The ID of the Category. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_id**
> TransactionResponse get_transactions_by_id(budget_id, transaction_id)

Single transaction

Returns a single transaction

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

transaction_id = "transaction_id_example" # String | The ID of the Transaction.


begin
  #Single transaction
  result = api_instance.get_transactions_by_id(budget_id, transaction_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->get_transactions_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction_id** | [**String**](.md)| The ID of the Transaction. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_payee**
> TransactionsResponse get_transactions_by_payee(budget_id, payee_id, opts)

List payee transactions

Returns all transactions for a specified payee

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

payee_id = "payee_id_example" # String | The ID of the Payee.

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date.
}

begin
  #List payee transactions
  result = api_instance.get_transactions_by_payee(budget_id, payee_id, opts)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->get_transactions_by_payee: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **payee_id** | [**String**](.md)| The ID of the Payee. | 
 **since_date** | **Date**| Only return transactions on or after this date. | [optional] 

### Return type

[**TransactionsResponse**](TransactionsResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **update_transaction**
> TransactionResponse update_transaction(budget_id, transaction_id, transaction)

Updates an existing transaction

Updates a transaction

### Example
```ruby
# load the gem
require 'ynab'
# setup authorization
YnabApi.configure do |config|
  # Configure API key authorization: bearer
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = YnabApi::TransactionsApi.new

budget_id = "budget_id_example" # String | The ID of the Budget.

transaction_id = "transaction_id_example" # String | The ID of the Transaction.

transaction = YnabApi::SaveTransactionWrapper.new # SaveTransactionWrapper | The Transaction to update.


begin
  #Updates an existing transaction
  result = api_instance.update_transaction(budget_id, transaction_id, transaction)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling TransactionsApi->update_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **transaction_id** | [**String**](.md)| The ID of the Transaction. | 
 **transaction** | [**SaveTransactionWrapper**](SaveTransactionWrapper.md)| The Transaction to update. | 

### Return type

[**TransactionResponse**](TransactionResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



