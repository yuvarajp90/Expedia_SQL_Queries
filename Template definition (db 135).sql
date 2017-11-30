use AlphaMVP;

select * from [dbo].[template_definition_prod] 
where template_id in (29) 
and template_deleted_flag = 0
order by template_id, slot_position, module_priority_in_slot


select distinct template_id from [AlphaMVP].[dbo].[template_definition_prod]
where segment_module_map_id = 11 and template_deleted_flag = 0

select * from [AlphaMVP].[dbo].[campaign_definition_prod] 
where template_id in (27,1078)
and campaign_Deleted_flag = 0