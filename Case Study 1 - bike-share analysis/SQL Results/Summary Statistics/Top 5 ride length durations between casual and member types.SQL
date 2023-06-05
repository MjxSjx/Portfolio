-- As can be seen:
-- Members use the bikes more often but in a shorter duration.
-- Casuals use the bikes less but for an average duration of 33% longer.

ride_length  member_casual totalRides
00:05:00      member	     55141
00:06:00      member	     53804
00:04:00      member	     52544
00:07:00      member	     51019
00:08:00      member	     46621
### Average member ride duration for top 5 is: 6 minutes 
* Total number members for top 5: 51,825 
* 63.5% 

ride_length  member_casual totalRides
00:08:00      casual	     31041
00:09:00      casual	     30204
00:07:00      casual	     30092
00:10:00      casual	     29134
00:06:00      casual	     28726
### Average casual ride duration for top 5 is: 8 minutes
* Total number members for top 5: 29,839 
* 36.5%

-- syntax for casuals
SELECT TOP 5
  ride_length,
  member_casual,
  COUNT(*) AS totalRides
FROM (
	SELECT ride_length, 'casual' AS member_casual FROM [202205-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202206-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202207-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202208-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202209-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202210-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202211-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202212-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202301-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202302-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202303-divvy-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202304-divvy-tripdata] WHERE member_casual = 'casual'
) AS AnnualTable
GROUP BY ride_length, member_casual
ORDER BY totalRides DESC;

-- syntax for members
SELECT TOP 5
  ride_length,
  member_casual,
  COUNT(*) AS totalRides
FROM (
	SELECT ride_length, 'member' AS member_casual FROM [202205-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202206-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202207-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202208-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202209-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202210-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202211-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202212-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202301-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202302-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202303-divvy-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202304-divvy-tripdata] WHERE member_casual = 'member'
) AS AnnualTable
GROUP BY ride_length, member_casual
ORDER BY totalRides DESC;
