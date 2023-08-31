# YNAB::HybridTransactionAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Whether the hybrid transaction represents a regular transaction or a subtransaction |  |
| **parent_transaction_id** | **String** | For subtransaction types, this is the id of the parent transaction.  For transaction types, this id will be always be null. | [optional] |
| **account_name** | **String** |  |  |
| **payee_name** | **String** |  | [optional] |
| **category_name** | **String** | The name of the category.  If a split transaction, this will be &#39;Split&#39;. | [optional] |

