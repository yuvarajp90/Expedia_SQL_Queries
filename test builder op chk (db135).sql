select top 100 * from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing];

select distinct test_keys, control_test_flag, count(*)
from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing]
group by test_keys, control_test_flag
order by test_keys, control_test_flag

--select distinct control_test_flag, count(distinct test_keys)
--from [AlphaStaging].[dbo].[en_AU_Staging_moduleversiontest_0831]
--group by control_test_flag
--order by control_test_flag

select distinct control_test_flag, s2_module_id
from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing]
order by control_test_flag

--select distinct s1_module_id, s1_p1,s1_p2
--from [AlphaStaging].[dbo].[en_AU_Staging_moduleversiontest_0830]
--where control_test_flag != 'control'
--order by s1_module_id

select distinct s2_module_id
from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing]


Insert into [AlphaStaging]..[en_AU_Staging_moduleversiontest_testsend]
select top 10 * from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing] where S2_module_id = 12567 
union
select top 10 * from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing] where S2_module_id = 12627

select * from [AlphaStaging]..[en_AU_Staging_moduleversiontest_testsend]

select top 1 * from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing] where S2_module_id = 12567 
union
select top 1 * from [AlphaStaging].[dbo].[en_AU_Staging_20170918_testing] where S2_module_id = 12627

Insert into [AlphaStaging]..[en_AU_Staging_20170920_bkup]
select * from [AlphaStaging].[dbo].[en_AU_Staging_20170920]

select top 10 * from [AlphaStaging].[dbo].[en_AU_Staging_20170920]
