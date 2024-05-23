# YNAB::TransactionDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **date** | **Date** | The transaction date in ISO format (e.g. 2016-12-01) |  |
| **amount** | **Integer** | The transaction amount in milliunits format |  |
| **memo** | **String** |  | [optional] |
| **cleared** | [**TransactionClearedStatus**](TransactionClearedStatus.md) |  |  |
| **approved** | **Boolean** | Whether or not the transaction is approved |  |
| **flag_color** | [**TransactionFlagColor**](TransactionFlagColor.md) |  | [optional] |
| **flag_name** | **String** | The customized name of a transaction flag | [optional] |
| **account_id** | **String** |  |  |
| **payee_id** | **String** |  | [optional] |
| **category_id** | **String** |  | [optional] |
| **transfer_account_id** | **String** | If a transfer transaction, the account to which it transfers | [optional] |
| **transfer_transaction_id** | **String** | If a transfer transaction, the id of transaction on the other side of the transfer | [optional] |
| **matched_transaction_id** | **String** | If transaction is matched, the id of the matched transaction | [optional] |
| **import_id** | **String** | If the transaction was imported, this field is a unique (by account) import identifier.  If this transaction was imported through File Based Import or Direct Import and not through the API, the import_id will have the format: &#39;YNAB:[milliunit_amount]:[iso_date]:[occurrence]&#39;.  For example, a transaction dated 2015-12-30 in the amount of -$294.23 USD would have an import_id of &#39;YNAB:-294230:2015-12-30:1&#39;.  If a second transaction on the same account was imported and had the same date and same amount, its import_id would be &#39;YNAB:-294230:2015-12-30:2&#39;. | [optional] |
| **import_payee_name** | **String** | If the transaction was imported, the payee name that was used when importing and before applying any payee rename rules | [optional] |
| **import_payee_name_original** | **String** | If the transaction was imported, the original payee name as it appeared on the statement | [optional] |
| **debt_transaction_type** | **String** | If the transaction is a debt/loan account transaction, the type of transaction | [optional] |
| **deleted** | **Boolean** | Whether or not the transaction has been deleted.  Deleted transactions will only be included in delta requests. |  |
| **account_name** | **String** |  |  |
| **payee_name** | **String** |  | [optional] |
| **category_name** | **String** | The name of the category.  If a split transaction, this will be &#39;Split&#39;. | [optional] |
| **subtransactions** | [**Array&lt;SubTransaction&gt;**](SubTransaction.md) | If a split transaction, the subtransactions. |  |

