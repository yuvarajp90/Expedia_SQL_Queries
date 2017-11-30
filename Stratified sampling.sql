select top 100 a.*
from (select a.*,
             row_number() over (order by campaign_id) as seqnum,
             count(*) over () as cnt
      from  [AlphaStaging].[dbo].[en_US_Staging_20170809] a
     ) a
where seqnum % (cnt / 500) = 1;

select *
from [AlphaStaging].[dbo].[en_US_Staging_20170809] 
tablesample (1 percent)