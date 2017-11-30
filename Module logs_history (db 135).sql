use AlphaProd;

Select Top 10 * from [AlphaProd].[dbo].[ModulePos]
where moduleid in (12135,12488,12490,12492,12494,12498,12500,12504)
--and locale = 'en_AU'
order by updatedate desc

select * from [AlphaMVP].[dbo].[module_definition_prod]
where module_id in (12431,12432,12514)



