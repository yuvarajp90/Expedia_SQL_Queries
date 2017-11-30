select top 10 * from [AlphaMvp].[dbo].[segment_module_prod] 
where segment_type_id in (11) and module_type_id in (79)
and seg_mod_deleted_flag=0
-- order by segment_module_map_id


select * from [AlphaMvp].[dbo].[segment_module_prod] 
where segment_module_map_id in (1168)
and seg_mod_deleted_flag=0


