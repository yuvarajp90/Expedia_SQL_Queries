\use orchestration;

select * from [dbo].[AlphaConfig] 
where locale in ('en_au','en_nz','en_gb','en_us', 'en_ca') and brand = 'Brand Expedia';
--id	Locale	tpid	eapid	brand	ProcessName
--1		en_us	1	0	Brand Expedia	AlphaProcess
--26	en_gb	3	0	Brand Expedia	AlphaProcess
--33	en_au	25	0	Brand Expedia	AlphaProcess
--37	en_ca	4	0	Brand Expedia	AlphaProcess
--40	en_nz	29	0	Brand Expedia	AlphaProcess

select * from orchestration.[dbo].CentralLog 
where SourceID = 33
order by logid desc;

select distinct sourcename from [dbo].CentralLog
--Alpha Omnicode
--ETL
--AlphaProcess
--CHCXCRMSQL009.[UnicaMart]
--Segmentcountprocess
--MIS
--Alpha Trigger

select * from [dbo].[ETLConfig] where Locale = 'en_us'

select * from [dbo].[SegmentCountDetailLogs]
order by LogID desc

select distinct sourcename from [orchestration].[dbo].[AlphaProcessDetailsLog] 
--Segment_Mapping
--AlphaProcess
--Segmentcountprocess

select * from [orchestration].[dbo].[CentralLog] 
where sourcename = 'Segment_Mapping'
order by logid desc;

select * from [orchestration].[dbo].[AlphaProcessDetailsLog] 
where sourcename = 'AlphaProcess'
and sourceid = 1
order by logid desc;

select * from [orchestration].[dbo].[AlphaProcessDetailsLog] 
where sourcename = 'AlphaProcess'
and sourceid = 26
order by logid desc;

select * from [orchestration].[dbo].[AlphaProcessDetailsLog_BACKUP] 
where sourcename = 'AlphaProcess'
and sourceid = 37
order by logid desc;

select top 100 * from [orchestration].[dbo].[CentralLog_Backup] 
where sourcename = 'AlphaProcess'
and sourceid =40
--and [status] = 'Campaign Suppression completed'
order by logid desc;

EXEC  [orchestration].[dbo].getAlphaStatus @locale = 'en_NZ', @StartTime = '17:30'

select top 100 * from [orchestration].[dbo].[CentralLog] 
where sourcename = 'AlphaProcess'
and sourceid =1
--and [status] = 'Campaign Suppression completed'
order by logid desc;

select top 100 * from [orchestration].[dbo].[CentralLog] 
where sourcename = 'AlphaProcess' and sourceid = 37
order by logid desc;

select top 100 * from [orchestration].[dbo].[CentralLog] 
where sourcename = 'ETL'
order by logid desc;

select top 100 * from Orchestration.dbo.ETLconfig
select top 100 * from Orchestration.dbo.Alphaconfig

select top 100 * from [orchestration].[dbo].[CentralLog] 
where sourceid = 45 and IsComplete = 1 and sourcename = 'ETL'
order by StartDate desc;

select * from [orchestration].[dbo].[AlphaProcessDetailsLog] 
where sourcename = 'AlphaProcess'
order by logid desc;

select * from [orchestration].[dbo].[CentralLog] 
where sourcename = 'ETL' and sourceid = 45
order by EndDate desc;


