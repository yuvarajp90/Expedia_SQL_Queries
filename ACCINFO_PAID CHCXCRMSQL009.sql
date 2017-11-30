use UnicaMart;

select top 100 * from [dbo].[AccountInfo_PAID]

select distinct TPID, EAPID, LANG_ID from [dbo].[AccountInfo_PAID]

select count(*), count(distinct email_addr), count(distinct subscriberkey)
from [dbo].[AccountInfo_PAID]
where PM_OK_Ind = 1
and TPID = 1 and EAPID = 0 and LANG_ID = 1033
--group by Lang_ID
--en_nz 217,096
--en_au 980,870
--en_ca 1,525,347
--en_gb 2,401,388
--en_us 23,447,804

select distinct email_addr, count(*)
from [dbo].[AccountInfo_PAID]
where PM_OK_Ind = 1
and TPID = 25 and EAPID = 0 and LANG_ID = 5129
group by email_addr


--sp_spaceused [AccountInfo_PAID]

select top 10 * from [10.23.19.63].[ESPMERCH].[dbo].[Prod_CampID437SegID3568SchID696]
--Launchdate = 2017-07-19T00:00:00Z

select testkey, pm_ok_ind, count(*) 
from [10.23.19.63].[ESPMERCH].[dbo].[Prod_CampID437SegID3568SchID696]
group by testkey, pm_ok_ind
order by testkey

select top 10 * from [10.23.18.135].[AlphaStaging].[dbo].[en_CA_Staging_20170724]
--Launchdate = 2017-07-25T00:00:00Z

select test_keys, count(*) 
from [10.23.18.135].[AlphaStaging].[dbo].[en_CA_Staging_20170724]
group by test_keys
order by test_keys

--select distinct email_addr from [10.23.19.63].[ESPMERCH].[dbo].[Prod_CampID3047SegID3794SchID3767]
--except
--select distinct email_address from [10.23.18.135].[AlphaStaging].[dbo].[en_CA_Staging_20170724]

SELECT distinct email_addr FROM [10.23.19.63].[ESPMERCH].[dbo].[Prod_CampID437SegID3568SchID696]
WHERE (
email_addr NOT IN
(SELECT DISTINCT email_address FROM [10.23.18.135].[AlphaStaging].[dbo].[en_CA_Staging_20170724])
)
and PM_OK_ind = 1
and TestKey < 50