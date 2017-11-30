
--update T
set ScheduledLaunchTime = '2017-10-22 10:00:00.000'
--select *
from  [OcelotStaging].[dbo].[AlphaJobMappingProd]  T
where T.AlphaCampaignID in (24) and Locale = 'en_nz'
--au
--2017-10-22 12:00:00.000
--nz
--2017-10-22 10:00:00.000

--update T
set LaunchDate = '2017-10-22'
--select *
from  [AlphaMVP].[dbo].[campaign_definition_prod] T
where T.campaign_id in (24) and Locale in ('en_au','en_nz') and campaign_deleted_flag = 0
--2017-10-11
--------------------------------------------------------------------------------------------------------------------------------------------------------
--update T
set [priority] = 1
--select *
from  [AlphaMVP].[dbo].[campaign_definition_prod] T
where T.campaign_id in (105) and Locale = 'en_US' and campaign_deleted_flag = 0

--update T
set [status] = 'archived'
--select *
from  [AlphaMVP].[dbo].[module_definition_prod] T
where T.module_id in (12527,12532) and tpid = 1 and eapid = 0

--update T
set segment_criteria = 'tpid = 1 and eapid = 0 and ( test_keys >= 1 and test_keys  <= 23   and mer_status  in ( 1 )  )'
--select *
from [AlphaMVP]..[segment_definition_prod] T
where T.segment_type_id in (1151)
and T.tpid = 1 
and T.segment_deleted_flag = 0

--update T
set campaign_segment_type_id = 1075
--select *
from  [AlphaMVP].[dbo].[campaign_definition_prod] T
where T.campaign_id in (175) and Locale = 'en_us' and campaign_deleted_flag = 0
--1074 (MOD, 88)
--1207 (faresale, 94)
--1075 (US DIscover, 175)

--update T
set IsComplete = 0
--select * 
from [orchestration].[dbo].[CentralLog]  T
where T.logid = 10317

--update T
set [start_date] = '2017-09-30'
--select * 
from [AlphaMVP].[dbo].[test_look_up_table_prod] T
where T.test_id in (18)

--update T
set [end_date] = '2017-09-30'
--select * 
from [AlphaMVP].[dbo].[test_look_up_table_prod] T
where T.test_id in (18)

--update T
set [enddate] = '2017-10-31 14:17:45.973'
--select * 
from [orchestration].[dbo].[CentralLog]  T
where T.logid = 19046

startdate: 2017-10-30 13:37:07.767
enddate: 2017-10-30 14:17:45.973


