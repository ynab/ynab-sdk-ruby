# YNAB::MonthDetail

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**month** | **Date** |  | 
**note** | **String** |  | [optional] 
**income** | **Integer** | The total amount in transactions categorized to &#39;Inflow: To be Budgeted&#39; in the month | 
**budgeted** | **Integer** | The total amount budgeted in the month | 
**activity** | **Integer** | The total amount in transactions in the month, excluding those categorized to &#39;Inflow: To be Budgeted&#39; | 
**to_be_budgeted** | **Integer** | The available amount for &#39;To be Budgeted&#39; | 
**age_of_money** | **Integer** | The Age of Money as of the month | [optional] 
**deleted** | **BOOLEAN** | Whether or not the month has been deleted.  Deleted months will only be included in delta requests. | 
**categories** | [**Array&lt;Category&gt;**](Category.md) | The budget month categories.  Amounts (budgeted, activity, balance, etc.) are specific to the {month} parameter specified. | 


