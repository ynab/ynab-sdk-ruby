# YnabApi::SaveTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  | 
**date** | **Date** |  | 
**amount** | **Float** | The transaction amount in milliunits format | 
**payee_id** | **String** | The payee for the transaction.  Transfer payees are not permitted and will be ignored if supplied. | [optional] 
**category_id** | **String** | The category for the transaction.  Split and Credit Card Payment categories are not permitted and will be ignored if supplied. | [optional] 
**cleared** | **String** | The cleared status of the transaction | [optional] 
**approved** | **BOOLEAN** | Whether or not the transaction is approved.  If not supplied, transaction will be unapproved by default. | [optional] 
**memo** | **String** |  | [optional] 


