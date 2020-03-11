# YNAB::Category

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**category_group_id** | **String** |  | 
**name** | **String** |  | 
**hidden** | **BOOLEAN** | Whether or not the category is hidden | 
**original_category_group_id** | **String** | If category is hidden this is the id of the category group it originally belonged to before it was hidden. | [optional] 
**note** | **String** |  | [optional] 
**budgeted** | **Integer** | Budgeted amount in milliunits format | 
**activity** | **Integer** | Activity amount in milliunits format | 
**balance** | **Integer** | Balance in milliunits format | 
**goal_type** | **String** | The type of goal, if the category has a goal (TB&#x3D;&#39;Target Category Balance&#39;, TBD&#x3D;&#39;Target Category Balance by Date&#39;, MF&#x3D;&#39;Monthly Funding&#39;, NEED&#x3D;&#39;Plan Your Spending&#39;) | [optional] 
**goal_creation_month** | **Date** | The month a goal was created | [optional] 
**goal_target** | **Integer** | The goal target amount in milliunits | [optional] 
**goal_target_month** | **Date** | The target month for the goal to be completed.  Only some goal types specify this date. | [optional] 
**goal_percentage_complete** | **Integer** | The percentage completion of the goal | [optional] 
**deleted** | **BOOLEAN** | Whether or not the category has been deleted.  Deleted categories will only be included in delta requests. | 


