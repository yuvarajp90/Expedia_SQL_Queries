use AlphaMVP;

select * from [dbo].[campaign_definition_prod] 
where locale = 'en_nz' 
and campaign_deleted_flag = 0 and campaign_id in (158)
--and campaign_segment_type_id = 1151
order by campaign_id

select * from [AlphaMVP].[dbo].[campaign_definition_prod] 
where launchdate = (CONVERT(date, getdate())) 
--and locale in ('en_nz','en_au') 
and locale in ('en_gb') 
and campaign_deleted_flag = 0
order by campaign_id;

select * from [AlphaMVP].[dbo].[campaign_definition_prod] 
where launchdate = '2017-11-30'
--and locale in ('en_nz') 
and campaign_deleted_flag = 0
order by locale,campaign_id;

select top 10 * from AlphaProd..campaign
where campaignid = 175

