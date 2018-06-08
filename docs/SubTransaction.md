# YnabApi::SubTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transaction_id** | **String** |  | 
**amount** | **Float** | The subtransaction amount in milliunits format | 
**memo** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** | If a transfer, the account_id which the subtransaction transfers to | 
**deleted** | **BOOLEAN** | Whether or not the subtransaction has been deleted.  Deleted subtransactions will only be included in delta requests. | 


