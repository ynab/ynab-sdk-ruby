# YNAB::SaveScheduledTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  |  |
| **date** | **Date** | The scheduled transaction date in ISO format (e.g. 2016-12-01).  This should be a future date no more than 5 years into the future. |  |
| **amount** | **Integer** | The scheduled transaction amount in milliunits format. | [optional] |
| **payee_id** | **String** | The payee for the scheduled transaction.  To create a transfer between two accounts, use the account transfer payee pointing to the target account.  Account transfer payees are specified as &#x60;transfer_payee_id&#x60; on the account resource. | [optional] |
| **payee_name** | **String** | The payee name for the the scheduled transaction.  If a &#x60;payee_name&#x60; value is provided and &#x60;payee_id&#x60; has a null value, the &#x60;payee_name&#x60; value will be used to resolve the payee by either (1) a payee with the same name or (2) creation of a new payee. | [optional] |
| **category_id** | **String** | The category for the scheduled transaction. Credit Card Payment categories are not permitted. Creating a split scheduled transaction is not currently supported. | [optional] |
| **memo** | **String** |  | [optional] |
| **flag_color** | [**TransactionFlagColor**](TransactionFlagColor.md) |  | [optional] |
| **frequency** | [**ScheduledTransactionFrequency**](ScheduledTransactionFrequency.md) |  | [optional] |

