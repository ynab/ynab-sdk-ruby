# YNAB::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  |
**name** | **String** |  |
**type** | **String** | The type of account. Note: payPal, merchantAccount, investmentAccount, and mortgage types have been deprecated and will be removed in the future. |
**on_budget** | **BOOLEAN** | Whether this account is on budget or not |
**closed** | **BOOLEAN** | Whether this account is closed or not |
**note** | **String** |  |
**balance** | **Integer** | The current balance of the account in milliunits format |
**cleared_balance** | **Integer** | The current cleared balance of the account in milliunits format |
**uncleared_balance** | **Integer** | The current uncleared balance of the account in milliunits format |
**transfer_payee_id** | **String** | The payee_id of this account. |
**deleted** | **BOOLEAN** | Whether or not the account has been deleted.  Deleted accounts will only be included in delta requests. |


