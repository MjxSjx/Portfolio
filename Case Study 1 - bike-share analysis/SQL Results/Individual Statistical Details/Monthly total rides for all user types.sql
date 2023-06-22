-- April to October contain the majority of rides annually
-- November to March are the low points

year_month	total_rides
May 2022	  502543
Jun 2022	  620347
Jul 2022	  642661
Aug 2022	  605311
Sep 2022	  535140
Oct 2022	  414266
Nov 2022	  255762
Dec 2022	  135403
Jan 2023	  148284
Feb 2023	  149560
Mar 2023	  200447
Apr 2023	  324193

SELECT 'May 2022' AS year_month, COUNT(*) AS total_rides
FROM [202205-tripdata]
UNION ALL
SELECT 'Jun 2022' AS year_month, COUNT(*) AS total_rides
FROM [202206-tripdata]
UNION ALL
SELECT 'Jul 2022' AS year_month, COUNT(*) AS total_rides
FROM [202207-tripdata]
UNION ALL
SELECT 'Aug 2022' AS year_month, COUNT(*) AS total_rides
FROM [202208-tripdata]
UNION ALL
SELECT 'Sept 2022' AS year_month, COUNT(*) AS total_rides
FROM [202209-tripdata]
UNION ALL
SELECT 'Oct 2022' AS year_month, COUNT(*) AS total_rides
FROM [202210-tripdata]
UNION ALL
SELECT 'Nov 2022' AS year_month, COUNT(*) AS total_rides
FROM [202211-tripdata]
UNION ALL
SELECT 'Dec 2022' AS year_month, COUNT(*) AS total_rides
FROM [202212-tripdata]
UNION ALL
SELECT 'Jan 2023' AS year_month, COUNT(*) AS total_rides
FROM [202301-tripdata]
UNION ALL
SELECT 'Feb 2023' AS year_month, COUNT(*) AS total_rides
FROM [202302-tripdata]
UNION ALL
SELECT 'Mar 2023' AS year_month, COUNT(*) AS total_rides
FROM [202303-tripdata]
UNION ALL
SELECT 'Apr 2023' AS year_month, COUNT(*) AS total_rides
FROM [202304-tripdata];
