# YNAB::Category

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**category_group_id** | **String** |  | 
**name** | **String** |  | 
**hidden** | **BOOLEAN** | Whether or not the category is hidden | 
**original_category_group_id** | **String** | If category is hidden this is the id of the category group it originally belonged to before it was hidden. | [optional] 
**note** | **String** |  | 
**budgeted** | **Float** | Budgeted amount in current month in milliunits format | 
**activity** | **Float** | Activity amount in current month in milliunits format | 
**balance** | **Float** | Balance in current month in milliunits format | 
**deleted** | **BOOLEAN** | Whether or not the category has been deleted.  Deleted categories will only be included in delta requests. | 


