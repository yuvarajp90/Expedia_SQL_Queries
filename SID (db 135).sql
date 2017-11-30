select distinct CampaignID, (CONVERT(date, RunDate)) as send_date, [SID]
from  OcelotStaging.dbo.omniture_master_foralpha