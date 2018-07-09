# YNAB::ScheduledTransactionSummary

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**date_first** | **Date** | The first date for which the Scheduled Transaction was scheduled. | 
**date_next** | **Date** | The next date for which the Scheduled Transaction is scheduled. | 
**frequency** | **String** |  | 
**amount** | **Float** | The scheduled transaction amount in milliunits format | 
**memo** | **String** |  | 
**flag_color** | **String** | The scheduled transaction flag | 
**account_id** | **String** |  | 
**payee_id** | **String** |  | 
**category_id** | **String** |  | 
**transfer_account_id** | **String** | If a transfer, the account_id which the scheduled transaction transfers to | 
**deleted** | **BOOLEAN** | Whether or not the scheduled transaction has been deleted.  Deleted scheduled transactions will only be included in delta requests. | 


