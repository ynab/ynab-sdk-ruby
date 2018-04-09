# YnabApi::CategoriesApi

All URIs are relative to *https://api.youneedabudget.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_categories**](CategoriesApi.md#get_categories) | **GET** /budgets/{budget_id}/categories | List categories
[**get_category_by_id**](CategoriesApi.md#get_category_by_id) | **GET** /budgets/{budget_id}/categories/{category_id} | Single category


# **get_categories**
> CategoriesResponse get_categories(budget_id)

List categories

Returns all categories grouped by category group.

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 

### Return type

[**CategoriesResponse**](CategoriesResponse.md)

# **get_category_by_id**
> CategoryResponse get_category_by_id(budget_id, category_id)

Single category

Returns a single category

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **budget_id** | [**String**](.md)| The ID of the Budget. | 
 **category_id** | [**String**](.md)| The ID of the Category. | 

### Return type

[**CategoryResponse**](CategoryResponse.md)

