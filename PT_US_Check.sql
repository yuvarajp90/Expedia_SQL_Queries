select distinct s2_module_id from [AlphaStaging].[dbo].[en_US_Staging_20170817]
where campaign_id = 38

select top 100 * from [AlphaStaging].[dbo].[en_US_Staging_20170817]
where s2_module_id in (12501)


select top 10 * from [AlphaStaging].[dbo].[en_US_Staging_20170817]
where S2_att_option = '#S2_P6.default#S2_P2.3#S2_P7.1#S2_P5.3#S2_P8.1#S2_P1.default#S2_P3.3#S2_P4.3'



