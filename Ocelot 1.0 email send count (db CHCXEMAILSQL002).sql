use Ocelot_Attributes_Prod;

select * from [Ocelot_Attributes_Prod].[dbo].[PublishedScheduleTimes]
where 
(CONVERT(date, LaunchDateTime)) < = (CONVERT(date, getdate()))
and campaign_id in (437,3047,436,3074)
ORDER BY LaunchDateTime desc, campaign_id

select * from [Ocelot_Attributes_Prod].[dbo].[PublishedScheduleTimes]
where 
(CONVERT(date, LaunchDateTime)) < = (CONVERT(date, getdate()))
and campaign_id in (335,2888)
ORDER BY LaunchDateTime desc, campaign_id
