# YNAB::NewCategory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **note** | **String** |  | [optional] |
| **category_group_id** | **String** | The id of the category group to which this category belongs.  An internal category group may not be specified. | [optional] |
| **goal_target** | **Integer** | The goal target amount in milliunits format.  If value is specified and goal has not already been configured for category, a monthly goal will be created for the category with this target amount.  If goal_type is not specified, it will default to &#39;NEED&#39; or &#39;MF&#39; for Credit Card Payment categories. | [optional] |
| **goal_target_date** | **Date** | The goal target date in ISO format (e.g. 2016-12-01). | [optional] |
| **goal_needs_whole_amount** | **Boolean** | Whether the goal requires the full target amount each period. Only supported for &#39;NEED&#39; goals. When true, the goal is configured as &#39;Set aside another...&#39;. When false, the goal is configured as &#39;Refill up to...&#39;. | [optional] |

