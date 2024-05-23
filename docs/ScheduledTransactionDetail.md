# YNAB::ScheduledTransactionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **date_first** | **Date** | The first date for which the Scheduled Transaction was scheduled. |  |
| **date_next** | **Date** | The next date for which the Scheduled Transaction is scheduled. |  |
| **frequency** | **String** |  |  |
| **amount** | **Integer** | The scheduled transaction amount in milliunits format |  |
| **memo** | **String** |  | [optional] |
| **flag_color** | [**TransactionFlagColor**](TransactionFlagColor.md) |  | [optional] |
| **flag_name** | **String** | The customized name of a transaction flag | [optional] |
| **account_id** | **String** |  |  |
| **payee_id** | **String** |  | [optional] |
| **category_id** | **String** |  | [optional] |
| **transfer_account_id** | **String** | If a transfer, the account_id which the scheduled transaction transfers to | [optional] |
| **deleted** | **Boolean** | Whether or not the scheduled transaction has been deleted.  Deleted scheduled transactions will only be included in delta requests. |  |
| **account_name** | **String** |  |  |
| **payee_name** | **String** |  | [optional] |
| **category_name** | **String** | The name of the category.  If a split scheduled transaction, this will be &#39;Split&#39;. | [optional] |
| **subtransactions** | [**Array&lt;ScheduledSubTransaction&gt;**](ScheduledSubTransaction.md) | If a split scheduled transaction, the subtransactions. |  |

