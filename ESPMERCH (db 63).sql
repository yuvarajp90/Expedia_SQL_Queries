use [ESPMERCH]

--AU MERCH (1-50 TK) July 21st campaign
SELECT COUNT(*) FROM ESPMERCH.[dbo].[Prod_CampID3096SegID3888SchID3830] (NOLOCK)         --266479 1.0
SELECT COUNT(*) FROM ESPMERCH.[dbo].[en_AU_CID29TID32SID45] (NOLOCK)                     --256623 2.0

select top 10 * from ESPMERCH.[dbo].[Prod_CampID3096SegID3888SchID3830]
select top 10 * from ESPMERCH.[dbo].[en_AU_CID29TID32SID45]

SELECT top 10 * FROM ESPMERCH.[dbo].[Prod_CampID3096SegID3888SchID3830] (NOLOCK)         --266479 1.0
SELECT top 10 * FROM ESPMERCH.[dbo].[en_AU_CID29TID32SID45] (NOLOCK)                     --256623 2.0

-- AU MESO (1-20 TK)
SELECT COUNT(*) FROM ESPMERCH.[dbo].[Prod_CampID3096SegID3889SchID3831] (NOLOCK)         --182993 1.0
SELECT COUNT(*) FROM ESPMERCH.[dbo].[en_AU_CID33TID1053SID49] (NOLOCK)                   --176267 2.0

--NZ Full base 
SELECT COUNT(*) FROM ESPMERCH.[dbo].[Prod_CampID3095SegID3887SchID3829] (NOLOCK)         --204218 1.0
SELECT COUNT(*) FROM ESPMERCH.[dbo].[en_NZ_CID16TID1089SID32] (NOLOCK)                   --156973 2.0

SELECT * FROM ESPMERCH.dbo.CommonSuppressionLog
WHERE campaignTableName in ('[en_AU_CID29TID32SID45]', '[en_AU_CID33TID1053SID49]')
ORDER BY id desc

------------------------------------missing emails------------------------------------------------------

--AU MERCH (1-50 TK)
SELECT count(*) FROM ESPMERCH.[dbo].[Prod_CampID3096SegID3888SchID3830] a (NOLOCK)            
left join  ESPMERCH.[dbo].[en_AU_CID29TID32SID45] b (NOLOCK)  
--on a.email_addr = b.email_addr
on a.email_addr = b.emailaddress
where b.emailaddress is null                      

-- AU MESO (1-20 TK)
SELECT a.* FROM ESPMERCH.[dbo].[Prod_CampID3096SegID3889SchID3831] a (NOLOCK)             
left join  ESPMERCH.[dbo].[en_AU_CID33TID1053SID49] b (NOLOCK)       
on a.email_addr = b.email_addr
where b.email_addr is null                      


--NZ Full base
SELECT a.* FROM ESPMERCH.[dbo].[Prod_CampID3095SegID3887SchID3829] a (NOLOCK)             
left join  ESPMERCH.[dbo].[en_NZ_CID16TID1089SID32] b (NOLOCK)       
on a.email_addr = b.email_addr
where b.email_addr is null 

----------------------------------------------------------------------------------------------------------------------------------

select top 10 * from [dbo].[Prod_CampID3047SegID3794SchID3767]

select count(distinct email_addr), count(*) from [dbo].[Prod_CampID3047SegID3794SchID3767]

select distinct email_addr from [dbo].[Prod_CampID3047SegID3794SchID3767]
