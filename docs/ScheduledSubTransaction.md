# YNAB::ScheduledSubTransaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**scheduled_transaction_id** | **String** |  | 
**amount** | **Float** | The scheduled subtransaction amount in milliunits format | 
**memo** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** | If a transfer, the account_id which the scheduled subtransaction transfers to | 
**deleted** | **BOOLEAN** | Whether or not the scheduled subtransaction has been deleted.  Deleted scheduled subtransactions will only be included in delta requests. | 


