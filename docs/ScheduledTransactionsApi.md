# YNAB::ScheduledTransactionsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_scheduled_transaction_by_id**](ScheduledTransactionsApi.md#get_scheduled_transaction_by_id) | **GET** /budgets/{budget_id}/scheduled_transactions/{scheduled_transaction_id} | Single scheduled transaction
[**get_scheduled_transactions**](ScheduledTransactionsApi.md#get_scheduled_transactions) | **GET** /budgets/{budget_id}/scheduled_transactions | List scheduled transactions


# **get_scheduled_transaction_by_id**
> ScheduledTransactionResponse get_scheduled_transaction_by_id(budget_id, scheduled_transaction_id)

Single scheduled transaction

Returns a single scheduled transaction

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **scheduled_transaction_id** | [**String**](.md)| The id of the scheduled transaction | 

### Return type

[**ScheduledTransactionResponse**](ScheduledTransactionResponse.md)

# **get_scheduled_transactions**
> ScheduledTransactionsResponse get_scheduled_transactions(budget_id)

List scheduled transactions

Returns all scheduled transactions

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 

### Return type

[**ScheduledTransactionsResponse**](ScheduledTransactionsResponse.md)

