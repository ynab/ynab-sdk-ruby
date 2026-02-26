# YNAB::PlanSummary

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
| **accounts** | [**Array&lt;Account&gt;**](Account.md) | The plan accounts (only included if &#x60;include_accounts&#x3D;true&#x60; specified as query parameter) | [optional] |

