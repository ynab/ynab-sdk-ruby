# YnabApi::TransactionsApi

All URIs are relative to *https://localhost/papi/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_transactions**](TransactionsApi.md#get_transactions) | **GET** /budgets/{budget_id}/transactions | List transactions
[**get_transactions_by_account**](TransactionsApi.md#get_transactions_by_account) | **GET** /budgets/{budget_id}/accounts/{account_id}/transactions | List account transactions
[**get_transactions_by_category**](TransactionsApi.md#get_transactions_by_category) | **GET** /budgets/{budget_id}/categories/{category_id}/transactions | List category transactions
[**get_transactions_by_id**](TransactionsApi.md#get_transactions_by_id) | **GET** /budgets/{budget_id}/transactions/{transaction_id} | Single transaction


# **get_transactions**
> TransactionSummariesResponse get_transactions(budget_id, opts)

List transactions

Returns all budget transactions

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

budget_id = "budget_id_example" # String | ID of budget

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date
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
 **budget_id** | **String**| ID of budget | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 

### Return type

[**TransactionSummariesResponse**](TransactionSummariesResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_account**
> TransactionSummariesResponse get_transactions_by_account(budget_id, account_id, opts)

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

budget_id = "budget_id_example" # String | ID of budget

account_id = "account_id_example" # String | ID of account

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date
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
 **budget_id** | **String**| ID of budget | 
 **account_id** | **String**| ID of account | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 

### Return type

[**TransactionSummariesResponse**](TransactionSummariesResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_category**
> TransactionSummariesResponse get_transactions_by_category(budget_id, category_id, opts)

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

budget_id = "budget_id_example" # String | ID of budget

category_id = "category_id_example" # String | ID of category

opts = { 
  since_date: Date.parse("2013-10-20") # Date | Only return transactions on or after this date
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
 **budget_id** | **String**| ID of budget | 
 **category_id** | **String**| ID of category | 
 **since_date** | **Date**| Only return transactions on or after this date | [optional] 

### Return type

[**TransactionSummariesResponse**](TransactionSummariesResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_transactions_by_id**
> TransactionDetailResponse get_transactions_by_id(budget_id, transaction_id)

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

budget_id = "budget_id_example" # String | ID of budget

transaction_id = "transaction_id_example" # String | ID of transaction


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
 **budget_id** | **String**| ID of budget | 
 **transaction_id** | **String**| ID of transaction | 

### Return type

[**TransactionDetailResponse**](TransactionDetailResponse.md)

### Authorization

[bearer](../README.md#bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



