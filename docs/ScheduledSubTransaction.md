# YNAB::ScheduledSubTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **scheduled_transaction_id** | **String** |  |  |
| **amount** | **Integer** | The scheduled subtransaction amount in milliunits format |  |
| **memo** | **String** |  | [optional] |
| **payee_id** | **String** |  | [optional] |
| **payee_name** | **String** |  | [optional] |
| **category_id** | **String** |  | [optional] |
| **category_name** | **String** |  | [optional] |
| **transfer_account_id** | **String** | If a transfer, the account_id which the scheduled subtransaction transfers to | [optional] |
| **deleted** | **Boolean** | Whether or not the scheduled subtransaction has been deleted. Deleted scheduled subtransactions will only be included in delta requests. |  |

