# YnabApi::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**type** | **String** | The type of account. Note: payPal, merchantAccount, investmentAccount, and mortgage types have been deprecated and will be removed in the future. | 
**on_budget** | **BOOLEAN** | Whether this account is on budget or not | 
**closed** | **BOOLEAN** | Whether this account is closed or not | 
**note** | **String** |  | 
**balance** | **Float** | The current balance of the account in milliunits format | 
**cleared_balance** | **Float** | The current cleared balance of the account in milliunits format | 
**uncleared_balance** | **Float** | The current uncleared balance of the account in milliunits format | 
**deleted** | **BOOLEAN** | Whether or not the account has been deleted.  Deleted accounts will only be included in delta requests. | 


