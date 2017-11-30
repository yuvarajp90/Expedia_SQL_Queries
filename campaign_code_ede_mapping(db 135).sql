select top 10 * from OcelotStaging.dbo.campaigncode_programcode_mappings

select * from OcelotStaging.dbo.campaigncode_programcode_mappings
where isactive = 1

select distinct LOBINtent 
from OcelotStaging.dbo.campaigncode_programcode_mappings
where IsActive = 1

select distinct LOBINtent, CampaignGrouping 
from OcelotStaging.dbo.campaigncode_programcode_mappings
where IsActive = 1

