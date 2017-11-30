select * from AlphaStaging.dbo.LaunchAlphaProcess 
where LaunchDate = convert(date, getdate())

select * from AlphaStaging.dbo.LaunchAlphaProcess 
where LaunchDate = '2017-09-01'

select * from AlphaStaging.dbo.AlphaCodeTriggerLogProd 
where CampaignID = 105


