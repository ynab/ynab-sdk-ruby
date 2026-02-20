# YNAB::MoneyMovement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **month** | **Date** | The month of the money movement in ISO format (e.g. 2024-01-01) | [optional] |
| **moved_at** | **Time** | The date/time the money movement was processed on the server in ISO format (e.g. 2024-01-01T12:00:00Z) | [optional] |
| **note** | **String** |  | [optional] |
| **money_movement_group_id** | **String** | The id of the money movement group this movement belongs to | [optional] |
| **performed_by_user_id** | **String** | The id of the user who performed the money movement | [optional] |
| **from_category_id** | **String** | The id of the category the money was moved from | [optional] |
| **to_category_id** | **String** | The id of the category the money was moved to | [optional] |
| **amount** | **Integer** | The amount of the money movement in milliunits format |  |

