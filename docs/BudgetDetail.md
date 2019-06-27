# YNAB::BudgetDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**name** | **String** |  | 
**last_modified_on** | **DateTime** | The last time any changes were made to the budget from either a web or mobile client | [optional] 
**first_month** | **Date** | The earliest budget month | [optional] 
**last_month** | **Date** | The latest budget month | [optional] 
**date_format** | [**DateFormat**](DateFormat.md) |  | [optional] 
**currency_format** | [**CurrencyFormat**](CurrencyFormat.md) |  | [optional] 
**accounts** | [**Array&lt;Account&gt;**](Account.md) |  | [optional] 
**payees** | [**Array&lt;Payee&gt;**](Payee.md) |  | [optional] 
**payee_locations** | [**Array&lt;PayeeLocation&gt;**](PayeeLocation.md) |  | [optional] 
**category_groups** | [**Array&lt;CategoryGroup&gt;**](CategoryGroup.md) |  | [optional] 
**categories** | [**Array&lt;Category&gt;**](Category.md) |  | [optional] 
**months** | [**Array&lt;MonthDetail&gt;**](MonthDetail.md) |  | [optional] 
**transactions** | [**Array&lt;TransactionSummary&gt;**](TransactionSummary.md) |  | [optional] 
**subtransactions** | [**Array&lt;SubTransaction&gt;**](SubTransaction.md) |  | [optional] 
**scheduled_transactions** | [**Array&lt;ScheduledTransactionSummary&gt;**](ScheduledTransactionSummary.md) |  | [optional] 
**scheduled_subtransactions** | [**Array&lt;ScheduledSubTransaction&gt;**](ScheduledSubTransaction.md) |  | [optional] 


