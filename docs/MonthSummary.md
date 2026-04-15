# YNAB::MonthSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **month** | **Date** |  |  |
| **note** | **String** |  | [optional] |
| **income** | **Integer** | The total amount of transactions categorized to &#39;Inflow: Ready to Assign&#39; in the month |  |
| **budgeted** | **Integer** | The total amount assigned (budgeted) in the month |  |
| **activity** | **Integer** | The total amount of transactions in the month, excluding those categorized to &#39;Inflow: Ready to Assign&#39; |  |
| **to_be_budgeted** | **Integer** | The available amount for &#39;Ready to Assign&#39; |  |
| **age_of_money** | **Integer** | The Age of Money as of the month | [optional] |
| **deleted** | **Boolean** | Whether or not the month has been deleted.  Deleted months will only be included in delta requests. |  |
| **income_formatted** | **String** | The total income formatted in the plan&#39;s currency format | [optional] |
| **income_currency** | **Float** | The total income as a decimal currency amount | [optional] |
| **budgeted_formatted** | **String** | The total amount assigned formatted in the plan&#39;s currency format | [optional] |
| **budgeted_currency** | **Float** | The total amount assigned as a decimal currency amount | [optional] |
| **activity_formatted** | **String** | The total activity amount formatted in the plan&#39;s currency format | [optional] |
| **activity_currency** | **Float** | The total activity amount as a decimal currency amount | [optional] |
| **to_be_budgeted_formatted** | **String** | The available amount for &#39;Ready to Assign&#39; formatted in the plan&#39;s currency format | [optional] |
| **to_be_budgeted_currency** | **Float** | The available amount for &#39;Ready to Assign&#39; as a decimal currency amount | [optional] |

