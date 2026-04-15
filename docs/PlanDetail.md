# YNAB::PlanDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **name** | **String** |  |  |
| **last_modified_on** | **Time** | The last time any changes were made to the plan from either a web or mobile client | [optional] |
| **first_month** | **Date** | The earliest plan month | [optional] |
| **last_month** | **Date** | The latest plan month | [optional] |
| **date_format** | [**DateFormat**](DateFormat.md) |  | [optional] |
| **currency_format** | [**CurrencyFormat**](CurrencyFormat.md) |  | [optional] |
| **accounts** | [**Array&lt;AccountBase&gt;**](AccountBase.md) |  | [optional] |
| **payees** | [**Array&lt;Payee&gt;**](Payee.md) |  | [optional] |
| **payee_locations** | [**Array&lt;PayeeLocation&gt;**](PayeeLocation.md) |  | [optional] |
| **category_groups** | [**Array&lt;CategoryGroup&gt;**](CategoryGroup.md) |  | [optional] |
| **categories** | [**Array&lt;CategoryBase&gt;**](CategoryBase.md) |  | [optional] |
| **months** | [**Array&lt;MonthDetailBase&gt;**](MonthDetailBase.md) |  | [optional] |
| **transactions** | [**Array&lt;TransactionSummaryBase&gt;**](TransactionSummaryBase.md) |  | [optional] |
| **subtransactions** | [**Array&lt;SubTransactionBase&gt;**](SubTransactionBase.md) |  | [optional] |
| **scheduled_transactions** | [**Array&lt;ScheduledTransactionSummaryBase&gt;**](ScheduledTransactionSummaryBase.md) |  | [optional] |
| **scheduled_subtransactions** | [**Array&lt;ScheduledSubTransactionBase&gt;**](ScheduledSubTransactionBase.md) |  | [optional] |

