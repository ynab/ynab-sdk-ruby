# YNAB::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**type** | **String** | The type of account. Note: payPal, merchantAccount, investmentAccount, and mortgage types have been deprecated and will be removed in the future. | 
**on_budget** | **BOOLEAN** | Whether this account is on budget or not | 
**closed** | **BOOLEAN** | Whether this account is closed or not | 
**note** | **String** |  | [optional] 
**balance** | **Integer** | The current balance of the account in milliunits format | 
**cleared_balance** | **Integer** | The current cleared balance of the account in milliunits format | 
**uncleared_balance** | **Integer** | The current uncleared balance of the account in milliunits format | 
**transfer_payee_id** | **String** | The payee id which should be used when transferring to this account | 
**direct_import_linked** | **BOOLEAN** | Whether or not the account is linked to a financial institution for automatic transaction import. | [optional] 
**direct_import_in_error** | **BOOLEAN** | If an account linked to a financial institution (direct_import_linked&#x3D;true) and the linked connection is not in a healthy state, this will be true. | [optional] 
**deleted** | **BOOLEAN** | Whether or not the account has been deleted.  Deleted accounts will only be included in delta requests. | 


