# YNAB::PayeeLocationsApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payee_location_by_id**](PayeeLocationsApi.md#get_payee_location_by_id) | **GET** /budgets/{budget_id}/payee_locations/{payee_location_id} | Single payee location
[**get_payee_locations**](PayeeLocationsApi.md#get_payee_locations) | **GET** /budgets/{budget_id}/payee_locations | List payee locations
[**get_payee_locations_by_payee**](PayeeLocationsApi.md#get_payee_locations_by_payee) | **GET** /budgets/{budget_id}/payees/{payee_id}/payee_locations | List locations for a payee


# **get_payee_location_by_id**
> PayeeLocationResponse get_payee_location_by_id(budget_id, payee_location_id)

Single payee location

Returns a single payee location

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **payee_location_id** | [**String**](.md)| id of payee location | 

### Return type

[**PayeeLocationResponse**](PayeeLocationResponse.md)

# **get_payee_locations**
> PayeeLocationsResponse get_payee_locations(budget_id)

List payee locations

Returns all payee locations

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

# **get_payee_locations_by_payee**
> PayeeLocationsResponse get_payee_locations_by_payee(budget_id, payee_id)

List locations for a payee

Returns all payee locations for the specified payee

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The id of the budget (\&quot;last-used\&quot; can also be used to specify the last used budget) | 
 **payee_id** | [**String**](.md)| id of payee | 

### Return type

[**PayeeLocationsResponse**](PayeeLocationsResponse.md)

