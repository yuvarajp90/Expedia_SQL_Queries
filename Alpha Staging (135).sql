use AlphaStaging;

delete from [AlphaStaging].[dbo].[en_US_Staging_20170907];
drop table [AlphaStaging].[dbo].[en_US_Staging_20170714];

select top 10 * from [AlphaStaging].[dbo].[en_US_Staging_20170907];

select distinct campaign_id, count(*) from AlphaStaging.[dbo].[en_US_Staging_20170818] group by campaign_id;
select distinct campaign_id, count(*) from [dbo].[en_US_Staging_20170814] group by campaign_id;

select count(*), count(distinct email_address), count(distinct campaign_id) from [dbo].[en_US_Staging_20170910];
select count(*), count(distinct email_address), count(distinct campaign_id) from [dbo].[en_AU_Staging_20170903];
select count(*), count(distinct email_address), count(distinct campaign_id) from [dbo].[en_NZ_Staging_20170903];
select count(*), count(distinct email_address), count(distinct campaign_id) from [dbo].[en_GB_Staging_20170903];
select count(*), count(distinct email_address), count(distinct campaign_id) from [dbo].[en_CA_Staging_20170903];

select top 10 * from
(
select distinct email_address, count(*) as cnt
from [dbo].[en_NZ_Staging_20170717]
group by email_address
) c
where c.cnt > 1
order by c.cnt

select * from [dbo].[en_CA_Staging_20170724]
where email_address like ('%northerngal3@hotmail.com%')
--119rogers@gmail.com


select distinct s1_module_id, s2_module_id,s3_module_id, s4_module_id
where 
from [AlphaStaging].[dbo].[en_US_Staging_20170829];

select top 10 * from [AlphaStaging].[dbo].[en_US_Staging_20170829]
where s4_p1 like '%pixel%' or s4_p2 like '%pixel%' or s4_p3 like '%pixel%'  or s4_p4 like '%pixel%' or s4_p5 like '%pixel%'

