# YNAB::UpdateTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** |  | 
**date** | **Date** | The transaction date in ISO format (e.g. 2016-12-01).  Future dates (scheduled transactions) are not permitted.  Split transaction dates cannot be changed and if a different date is supplied it will be ignored. | 
**amount** | **Integer** | The transaction amount in milliunits format.  Split transaction amounts cannot be changed and if a different amount is supplied it will be ignored. | 
**payee_id** | **String** | The payee for the transaction.  To create a transfer between two accounts, use the account transfer payee pointing to the target account.  Account transfer payees are specified as &#x60;tranfer_payee_id&#x60; on the account resource. | [optional] 
**payee_name** | **String** | The payee name.  If a &#x60;payee_name&#x60; value is provided and &#x60;payee_id&#x60; has a null value, the &#x60;payee_name&#x60; value will be used to resolve the payee by either (1) a matching payee rename rule (only if &#x60;import_id&#x60; is also specified) or (2) a payee with the same name or (3) creation of a new payee. | [optional] 
**category_id** | **String** | The category for the transaction.  To configure a split transaction, you can specify null for &#x60;category_id&#x60; and provide a &#x60;subtransactions&#x60; array as part of the transaction object.  If an existing transaction is a split, the &#x60;category_id&#x60; cannot be changed.  Credit Card Payment categories are not permitted and will be ignored if supplied. | [optional] 
**memo** | **String** |  | [optional] 
**cleared** | **String** | The cleared status of the transaction | [optional] 
**approved** | **BOOLEAN** | Whether or not the transaction is approved.  If not supplied, transaction will be unapproved by default. | [optional] 
**flag_color** | **String** | The transaction flag | [optional] 
**import_id** | **String** | If specified, the new transaction will be assigned this &#x60;import_id&#x60; and considered \&quot;imported\&quot;.  We will also attempt to match this imported transaction to an existing \&quot;user-entered\&quot; transation on the same account, with the same amount, and with a date +/-10 days from the imported transaction date.&lt;br&gt;&lt;br&gt;Transactions imported through File Based Import or Direct Import (not through the API) are assigned an import_id in the format: &#39;YNAB:[milliunit_amount]:[iso_date]:[occurrence]&#39;. For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of &#39;YNAB:-294230:2015-12-30:1&#39;.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be &#39;YNAB:-294230:2015-12-30:2&#39;.  Using a consistent format will prevent duplicates through Direct Import and File Based Import.&lt;br&gt;&lt;br&gt;If import_id is omitted or specified as null, the transaction will be treated as a \&quot;user-entered\&quot; transaction. As such, it will be eligible to be matched against transactions later being imported (via DI, FBI, or API). | [optional] 
**subtransactions** | [**Array&lt;SaveSubTransaction&gt;**](SaveSubTransaction.md) | An array of subtransactions to configure a transaction as a split.  Updating &#x60;subtransactions&#x60; on an existing split transaction is not supported. | [optional] 


