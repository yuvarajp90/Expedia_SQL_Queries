use AlphaMVP;

select * from module_definition_prod 
where module_type_id = 79 and tpid = 25 and eapid = 0 and module_id = 12651
and status = 'active published'

select * from AlphaMVP.[dbo].module_definition_prod
--select * from module_definition_prod 
where module_id in (12579, 12581, 12584, 12494, 12592, 12500)
and locale = 'en_ca'


select * from AlphaMVP.[dbo].segment_module_prod
--select * from module_definition_prod 
where segment_type_id = 11 and module_Type_id = 79
and seg_mod_deleted_flag = 0
order by seg_mod_create_date desc


select * from AlphaMVP.[dbo].[module_variable_definition_prod]
--select * from module_definition_prod 
where module_id in (11946) and locale  = 'en_au'
--order by module_id
order by module_id, var_position

select * from AlphaMVP.[dbo].[module_variable_definition_prod]
where var_type is NULL


select distinct module_id, [status] from AlphaMVP.[dbo].[module_definition_prod]
where module_id in (
select distinct module_id from AlphaMVP.[dbo].[module_variable_definition_prod]
where var_source like '%mis_best_flight_fare_90d%'
--and var_structure like '%mis_origin_based_mod_summary.City_1_image_url_1%'
)

select distinct module_type_id, count(distinct [status]) as cnt
from [dbo].[module_definition_prod]
where [status] not in ('archived')
group by module_type_id
having count(distinct [status]) > 1
order by module_type_id

select * 
from [AlphaMVP].[dbo].[module_variable_definition_prod]
where module_id in (
	select distinct module_id
	from AlphaMVP..module_definition_prod 
	where [status] = 'active published' and placement_type = 'banner'
)
and locale = 'en_us'
order by module_id, var_position

select distinct var_display_name, count(distinct var_position) as pos_cnt
from AlphaMVP.[dbo].[module_variable_definition_prod] mvd, AlphaMVP.[dbo].[module_definition_prod] md
where mvd.module_id = md.module_id
and md.[status] = 'active published'
group by var_display_name
order by var_display_name

select * from AlphaMVP.[dbo].[module_variable_definition_prod]
where var_display_name = 'cb10_img'

select * from AlphaMVP.[dbo].[module_variable_definition_prod]
where module_id = 10722
order by module_id, var_position

select * from AlphaMVP.[dbo].[module_definition_prod]
where module_id = 10744


select md.module_id,md.placement_type, md.[status], mvd.var_display_name, mvd.var_position
from [AlphaMVP].[dbo].[module_variable_definition_prod] mvd, [AlphaMVP].[dbo].[module_definition_prod] md 
where mvd.module_id = md.module_id
group by md.module_id, md.placement_type, md.[status]
order by md.module_id, md.placement_type, md.[status]

select distinct placement_type, [status], count(distinct module_type_id) as mod_type_cnt, count(distinct module_id) as mod_id_cnt
from [AlphaMVP].[dbo].[module_definition_prod]
group by placement_type, [status]
order by placement_type, [status]

select a.*, SUBSTRING(var_display_name, 1, a.cut) from
(
select distinct module_id, var_display_name, CHARINDEX( '_', var_display_name) - 1 as cut
from [AlphaMVP].[dbo].[module_variable_definition_prod]
)a




left(var_display_name, CHARINDEX( '_', var_display_name) - 1)
