use [AlphaProd];

select * from [AlphaProd].[dbo].[PublishedScheduleTimes]
where locale in ('en_CA', 'en_GB') 
--and campaignid in (20,27,30,31,36,37,38,39,80,81,84,85,86,87,88)
and (CONVERT(date, localstartdatetime)) < = (CONVERT(date, getdate()))
ORDER BY Locale, LaunchDateTime desc, CampaignID
