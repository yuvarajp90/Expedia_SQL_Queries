use AlphaMVP;

select top 10* from [dbo].[campaign_definition_prod] where locale = 'en_us' and campaign_id = 89

select * from [dbo].[campaign_definition_prod] 
where locale = 'en_us' 
and campaign_deleted_flag = 0 
and campaign_id in (20,27,30,31,36,37,38,39) order by campaign_id
--and campaign_type = 'FareSale'
order by launchdate desc


select * from [dbo].[template_definition_prod] 
where template_id in (29) 
and template_deleted_flag = 0
order by template_id, slot_position, module_priority_in_slot

select * from [dbo].[segment_module_prod] 
where segment_module_map_id in (11) and seg_mod_deleted_flag = 0
order by segment_module_map_id 

 

select top 10* from [dbo].[segment_definition_prod] where segment_type_id = 21 and segment_deleted_flag = 0
where tpid = 29 and segment_deleted_flag = 0
order by segment_type_id

select top 10* from [dbo].[module_definition_prod]

select top 10* from [dbo].[module_variable_definition_prod] 
select * from [dbo].[module_variable_definition_prod] where module_id in (12021, 12023) order by module_id, var_position

select top 10 * from [dbo].[test_look_up_table_prod] order by test_id, start_date desc



select * from [dbo].[campaign_definition_prod] 
where locale = 'en_au' and campaign_deleted_flag = 0
order by campaign_id;

SELECT * FROM AlphaProd.dbo.module
where ModuleID in (12283, 12277)
--	and locale = 'en_CA'
--------------------------------------------------------------------------------------------------------------
select distinct f.campaign_id, f.slot_position, f.placement_type, f.segment_module_map_id, f.module_priority_in_slot,
f.segment_type_id, f.module_type_id, e.version, e.default, e.module_id
from [dbo].[module_definition_prod] e,
(
select distinct d.campaign_id, d.slot_position, d.placement_type, d.segment_module_map_id,  d.module_priority_in_slot,
c.segment_type_id, c.module_type_id 
from [dbo].[segment_module_prod] c,
(
select distinct a.campaign_id, b.slot_position, b.placement_type, b.segment_module_map_id , b.module_priority_in_slot
from [dbo].[template_definition_prod] b,
(
select distinct campaign_id, template_id from [dbo].[campaign_definition_prod] 
where campaign_id in (89)  and locale = 'en_us' and campaign_deleted_flag = 0
) a
where b.template_id = a.template_id
and template_deleted_flag = 0
)d
where c.segment_module_map_id = d.segment_module_map_id
and seg_mod_deleted_flag = 0
--order by d.campaign_id, d.slot_position, d.placement_type, d.module_priority_in_slot
)f
where e. module_type_id = f.module_type_id
and e.placement_type = f.placement_type
and e.[status] = 'active published' 
order by f.campaign_id, f.slot_position, f.placement_type, f.module_priority_in_slot, e.module_id

select * from AlphaMVP.dbo.SegmentCountFinal where segmentid = 21 and locale = 'en_us'

------------------------------------------------------------------------------------------------------------
EXEC [dbo].[getAlphaConfig]@launchdate = '2017-07-24', @Locale = 'en_CA', @CampaignID = 69

SELECT * FROM mis_mod_summary_Images (NOLOCK)
WHERE locale = 'en_US' and city like '%chi%'