# YNAB::BudgetSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**last_modified_on** | **DateTime** | The last time any changes were made to the budget from either a web or mobile client | [optional] 
**first_month** | **Date** | The earliest budget month | [optional] 
**last_month** | **Date** | The latest budget month | [optional] 
**date_format** | [**DateFormat**](DateFormat.md) |  | [optional] 
**currency_format** | [**CurrencyFormat**](CurrencyFormat.md) |  | [optional] 
**accounts** | [**Array&lt;Account&gt;**](Account.md) | The budget accounts (only included if &#x60;include_accounts&#x3D;true&#x60; specified as query parameter) | [optional] 


