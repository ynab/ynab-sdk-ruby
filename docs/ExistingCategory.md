# YNAB::ExistingCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **note** | **String** |  | [optional] |
| **category_group_id** | **String** | The id of the category group to which this category belongs.  An internal category group may not be specified. | [optional] |
| **goal_target** | **Integer** | The goal target amount in milliunits format.  If value is specified and goal has not already been configured for category, a monthly goal will be created for the category with this target amount.  If goal_type is not specified, it will default to &#39;NEED&#39;, or to &#39;MF&#39; for Credit Card Payment categories and &#39;DEBT&#39; for categories paired to a loan account. When updating a category, passing null removes any existing target. | [optional] |
| **goal_target_date** | **Date** | The goal target date in ISO format (e.g. 2016-12-01). Not supported for categories paired to a loan account. | [optional] |
| **goal_needs_whole_amount** | **Boolean** | Whether the goal requires the full target amount each period. Only supported for &#39;NEED&#39; goals, and not supported for Credit Card Payment categories or categories paired to a loan account. When true, the goal is configured as &#39;Set aside another...&#39;. When false, the goal is configured as &#39;Refill up to...&#39;. | [optional] |
| **goal_frequency** | **String** | When specified, configures a recurring &#39;NEED&#39; target of goal_target that repeats at this frequency, replacing any existing target. Requires goal_target. Cannot be combined with goal_target_date and is not supported for Credit Card Payment categories or categories paired to a loan account. Omit to leave an existing target&#39;s cadence unchanged. | [optional] |

