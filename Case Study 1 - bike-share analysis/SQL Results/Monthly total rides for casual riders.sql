-- Casual users follow a similar combined data for total rides per month. The macro view of all riders is inside the folder "Individual Statistical Details"
-- May to October contain the majority of rides annually
-- November to April are the low points
-- July is the most popular month
-- December is the least popular month

year_month	total_rides
May 2022	  220245
Jun 2022	  292066
Jul 2022	  311665
Aug 2022	  270087
Sep 2022	  220913
Oct 2022	  151323
Nov 2022	   73536
Dec 2022	   31505
Jan 2023	   29621
Feb 2023	   32776
Mar 2023	   46792
Apr 2023	  110536


SELECT 'May 2022' AS year_month, COUNT(*) AS total_rides
FROM [202205-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Jun 2022' AS year_month, COUNT(*) AS total_rides
FROM [202206-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Jul 2022' AS year_month, COUNT(*) AS total_rides
FROM [202207-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Aug 2022' AS year_month, COUNT(*) AS total_rides
FROM [202208-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Sept 2022' AS year_month, COUNT(*) AS total_rides
FROM [202209-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Oct 2022' AS year_month, COUNT(*) AS total_rides
FROM [202210-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Nov 2022' AS year_month, COUNT(*) AS total_rides
FROM [202211-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Dec 2022' AS year_month, COUNT(*) AS total_rides
FROM [202212-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Jan 2023' AS year_month, COUNT(*) AS total_rides
FROM [202301-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Feb 2023' AS year_month, COUNT(*) AS total_rides
FROM [202302-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Mar 2023' AS year_month, COUNT(*) AS total_rides
FROM [202303-tripdata] 
WHERE member_casual = 'casual'
UNION ALL
SELECT 'Apr 2023' AS year_month, COUNT(*) AS total_rides
FROM [202304-tripdata] 
WHERE member_casual = 'casual';
