select * from [AlphaMVP].[dbo].[test_look_up_table_prod] 
where test_type = 'module version' 
order by test_id, priority_module_type

select distinct test_id, locale from [AlphaMVP].[dbo].[test_look_up_table_prod] 
where test_type = 'module version' 
order by locale, test_id

select * from [AlphaMVP].[dbo].[test_look_up_table_prod] 
where test_type = 'module version' 
and test_id =22
order by test_id, priority_module_type

select distinct test_id from [AlphaMVP].[dbo].[test_look_up_table_prod] 
where test_type = 'module version'

select * from Orchestration.dbo.AlphaConfig

select top 100 * from [orchestration].[dbo].[AlphaProcessDetailsLog]
where sourcename = 'Sampling'
order by logid desc;

select * from [AlphaMVP].[dbo].[test_look_up_table_prod] 
where start_date = '2017-10-09' 
