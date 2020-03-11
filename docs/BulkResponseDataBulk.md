# YNAB::BulkResponseDataBulk

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_ids** | **Array&lt;String&gt;** | The list of Transaction ids that were created. | 
**duplicate_import_ids** | **Array&lt;String&gt;** | If any Transactions were not created because they had an &#x60;import_id&#x60; matching a transaction already on the same account, the specified import_id(s) will be included in this list. | 


