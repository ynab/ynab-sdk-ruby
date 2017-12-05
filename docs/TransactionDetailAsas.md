# YnabAPI::TransactionDetailAsas

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date** | **Date** |  | 
**amount** | **Float** | The current balance of the account in milliunits format | 
**cleared** | **String** | The cleared status of the transaction | 
**approved** | **BOOLEAN** | Whether or not the transaction is approved | 
**account_id** | **String** |  | 
**subtransactions** | [**Array&lt;SubTransactionAsas&gt;**](SubTransactionAsas.md) | If a split transaction, the sub-transactions. | 


