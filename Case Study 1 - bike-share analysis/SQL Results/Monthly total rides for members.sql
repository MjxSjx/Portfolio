-- Members follow the same combined data for total rides per month. The macro view of all riders is inside the folder "Individual Statistical Details"
-- April to October contain the majority of rides annually
-- November to March are the low points

year_month	total_rides
May 2022	  282298
Jun 2022	  328281
Jul 2022	  330996
Aug 2022	  335224
Sep 2022	  314227
Oct 2022	  262943
Nov 2022	  182226
Dec 2022	  103898
Jan 2023	  118663
Feb 2023	  116784
Mar 2023	  153655
Apr 2023	  213657


SELECT 'May 2022' AS year_month, COUNT(*) AS total_rides
FROM [202205-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Jun 2022' AS year_month, COUNT(*) AS total_rides
FROM [202206-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Jul 2022' AS year_month, COUNT(*) AS total_rides
FROM [202207-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Aug 2022' AS year_month, COUNT(*) AS total_rides
FROM [202208-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Sept 2022' AS year_month, COUNT(*) AS total_rides
FROM [202209-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Oct 2022' AS year_month, COUNT(*) AS total_rides
FROM [202210-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Nov 2022' AS year_month, COUNT(*) AS total_rides
FROM [202211-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Dec 2022' AS year_month, COUNT(*) AS total_rides
FROM [202212-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Jan 2023' AS year_month, COUNT(*) AS total_rides
FROM [202301-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Feb 2023' AS year_month, COUNT(*) AS total_rides
FROM [202302-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Mar 2023' AS year_month, COUNT(*) AS total_rides
FROM [202303-tripdata] 
WHERE member_casual = 'member'
UNION ALL
SELECT 'Apr 2023' AS year_month, COUNT(*) AS total_rides
FROM [202304-tripdata] 
WHERE member_casual = 'member';
