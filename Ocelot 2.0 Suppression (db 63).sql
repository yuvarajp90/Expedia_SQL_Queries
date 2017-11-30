use ESPMERCH;

SELECT SUM(RowsCount)
--SELECT *
FROM CommonSuppressionLog
where campaigntablename like '%US_CID8%Ver%'
and campaigntablename not like '%US_CID81%Ver%'
and SuppressionStep not in ('Starting Suppression', 'Suppression Complete')
and convert(date, startTime) = '2017-07-25'