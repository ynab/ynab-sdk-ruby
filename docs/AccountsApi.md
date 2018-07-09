# YNAB::AccountsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_account_by_id**](AccountsApi.md#get_account_by_id) | **GET** /budgets/{budget_id}/accounts/{account_id} | Single account
[**get_accounts**](AccountsApi.md#get_accounts) | **GET** /budgets/{budget_id}/accounts | Account list


# **get_account_by_id**
> AccountResponse get_account_by_id(budget_id, account_id)

Single account

Returns a single account

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **account_id** | [**String**](.md)| The ID of the Account. | 

### Return type

[**AccountResponse**](AccountResponse.md)

# **get_accounts**
> AccountsResponse get_accounts(budget_id)

Account list

Returns all accounts

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**AccountsResponse**](AccountsResponse.md)

