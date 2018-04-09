# YnabApi::ScheduledTransactionsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_scheduled_transaction_by_id**](ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | **GET** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Single scheduled transaction
[**get_scheduled_transactions**](ScheduledTransactionsApi.md#get_scheduled_transactions) | **GET** /budgets/{budget_id}/scheduled_transactions | List scheduled transactions


# **get_scheduled_transaction_by_id**
> ScheduledTransactionResponse get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)

Single scheduled transaction

Returns a single scheduled transaction

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #Single scheduled transaction
  result = ynab.foobar.get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling ScheduledTransactionsApi->get_scheduled_transaction_by_id: #{e}"
end

begin
  result = ynab.budgets.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **scheduled_transaction_id** | [**String**](.md)| The ID of the Scheduled Transaction. | 

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)

# **get_scheduled_transactions**
> ScheduledTransactionsResponse get_scheduled_transactions(budget_id)

List scheduled transactions

Returns all scheduled transactions

### Example
```ruby
require 'ynab'

access_token = 'bf0cbb14b4330-not-real-3de12e66a389eaafe2'

ynab = YnabApi::Client.new(access_token)

begin
  #List scheduled transactions
  result = ynab.foobar.get_scheduled_transactions(budget_id)
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling ScheduledTransactionsApi->get_scheduled_transactions: #{e}"
end

begin
  result = ynab.budgets.get_budgets
  p result
rescue YnabApi::ApiError => e
  puts "Exception when calling CategoriesApi->get_categories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**ScheduledTransactionsResponse**](ScheduledTransactionsResponse.md)

