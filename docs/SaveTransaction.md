# YnabApi::SaveTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  | 
**date** | **Date** |  | 
**amount** | **Float** | The transaction amount in milliunits format | 
**payee_id** | **String** | The payee for the transaction.  Transfer payees are not permitted and will be ignored if supplied. | [optional] 
**payee_name** | **String** | The payee name.  If a payee_name value is provided and payee_id has a null value, the payee_name value will be used to resolve the payee by either (1) a matching payee rename rule (only if import_id is also specified) or (2) a payee with the same name or (3) creation of a new payee. | [optional] 
**category_id** | **String** | The category for the transaction.  Split and Credit Card Payment categories are not permitted and will be ignored if supplied. | [optional] 
**memo** | **String** |  | [optional] 
**cleared** | **String** | The cleared status of the transaction | [optional] 
**approved** | **BOOLEAN** | Whether or not the transaction is approved.  If not supplied, transaction will be unapproved by default. | [optional] 
**flag_color** | **String** | The transaction flag | [optional] 
**import_id** | **String** | If specified for a new transaction, the transaction will be treated as Imported and assigned this import_id.  If another transaction on the same account with this same import_id is later attempted to be created, it will be skipped to prevent duplication.  Transactions imported through File Based Import or Direct Import and not through the API, are assigned an import_id in the format: &#39;YNAB:[milliunit_amount]:[iso_date]:[occurrence]&#39;.  For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of &#39;YNAB:-294230:2015-12-30:1&#39;.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be &#39;YNAB:-294230:2015-12-30:2&#39;.  Using a consistent format will prevent duplicates through Direct Import and File Based Import.  If import_id is specified as null, the transaction will be treated as a user entered transaction. | [optional] 


