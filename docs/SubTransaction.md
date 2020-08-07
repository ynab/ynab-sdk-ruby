# YNAB::SubTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**transaction_id** | **String** |  | 
**amount** | **Integer** | The subtransaction amount in milliunits format | 
**memo** | **String** |  | [optional] 
**payee_id** | **String** |  | [optional] 
**payee_name** | **String** |  | [optional] 
**category_id** | **String** |  | [optional] 
**category_name** | **String** |  | [optional] 
**transfer_account_id** | **String** | If a transfer, the account_id which the subtransaction transfers to | [optional] 
**transfer_transaction_id** | **String** | If a transfer, the id of transaction on the other side of the transfer | [optional] 
**deleted** | **BOOLEAN** | Whether or not the subtransaction has been deleted.  Deleted subtransactions will only be included in delta requests. | 


