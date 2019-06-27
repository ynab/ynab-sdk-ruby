# YNAB::SaveTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  | 
**date** | **Date** | The transaction date in ISO format (e.g. 2016-12-01).  Future dates (scheduled transactions) are not permitted.  Split transaction dates cannot be changed and if a different date is supplied it will be ignored. | 
**amount** | **Integer** | The transaction amount in milliunits format.  Split transaction amounts cannot be changed and if a different amount is supplied it will be ignored. | 
**payee_id** | **String** | The payee for the transaction | [optional] 
**payee_name** | **String** | The payee name.  If a payee_name value is provided and payee_id has a null value, the payee_name value will be used to resolve the payee by either (1) a matching payee rename rule (only if import_id is also specified) or (2) a payee with the same name or (3) creation of a new payee. | [optional] 
**category_id** | **String** | The category for the transaction.  Split and Credit Card Payment categories are not permitted and will be ignored if supplied.  If an existing transaction has a Split category it cannot be changed. | [optional] 
**memo** | **String** |  | [optional] 
**cleared** | **String** | The cleared status of the transaction | [optional] 
**approved** | **BOOLEAN** | Whether or not the transaction is approved.  If not supplied, transaction will be unapproved by default. | [optional] 
**flag_color** | **String** | The transaction flag | [optional] 
**import_id** | **String** | If specified, the new transaction will be assigned this import_id and considered \&quot;imported\&quot;. *At the time of import* we will attempt to match \&quot;imported\&quot; transactions with non-imported (i.e. \&quot;user-entered\&quot;) transactions.&lt;br&gt;&lt;br&gt;Transactions imported through File Based Import or Direct Import (not through the API) are assigned an import_id in the format: &#39;YNAB:[milliunit_amount]:[iso_date]:[occurrence]&#39;. For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of &#39;YNAB:-294230:2015-12-30:1&#39;.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be &#39;YNAB:-294230:2015-12-30:2&#39;.  Using a consistent format will prevent duplicates through Direct Import and File Based Import.&lt;br&gt;&lt;br&gt;If import_id is omitted or specified as null, the transaction will be treated as a \&quot;user-entered\&quot; transaction. As such, it will be eligible to be matched against transactions later being imported (via DI, FBI, or API). | [optional] 


