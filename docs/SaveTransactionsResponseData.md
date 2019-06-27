# YNAB::SaveTransactionsResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transaction_ids** | **Array&lt;String&gt;** | The transaction ids that were saved | 
**transaction** | [**TransactionDetail**](TransactionDetail.md) | If a single transaction was specified, the transaction that was saved | [optional] 
**transactions** | [**Array&lt;TransactionDetail&gt;**](TransactionDetail.md) | If multiple transactions were specified, the transactions that were saved | [optional] 
**duplicate_import_ids** | **Array&lt;String&gt;** | If multiple transactions were specified, a list of import_ids that were not created because of an existing import_id found on the same account | [optional] 
**server_knowledge** | **Integer** | The knowledge of the server | 


