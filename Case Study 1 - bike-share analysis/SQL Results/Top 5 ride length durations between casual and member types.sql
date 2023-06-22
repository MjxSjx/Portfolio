-- As can be seen: 
-- Members use the bikes more often but in a shorter duration.
-- Casuals use the bikes less but for an average duration of 33% longer.

ride_length  member_casual totalRides
00:04:34      member	      3790
00:04:52      member	      3781
00:04:35      member	      3718
00:04:18      member	      3666
00:04:49      member	      3658

* Average member ride duration for top 5 is: 4:38
* Total number members for top 5:  18613
* 57.2 % of all users in the top 5 are member

ride_length  member_casual totalRides
00:07:18      casual	      1605
00:07:43      casual	      1594
00:06:45      casual	      1594
00:07:06      casual	      1587
00:07:11      casual	      1581

* Average casual ride duration for top 5 is: 7:12
* Total number members for top 5: 7961
* 42.8 % of all users in the top 5 are casual

-- syntax for casuals
SELECT TOP 5
  ride_length,
  member_casual,
  COUNT(*) AS totalRides
FROM (
	SELECT ride_length, 'casual' AS member_casual FROM [202205-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202206-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202207-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202208-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202209-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202210-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202211-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202212-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202301-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202302-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202303-tripdata] WHERE member_casual = 'casual'
    UNION ALL
    SELECT ride_length, 'casual' AS member_casual FROM [202304-tripdata] WHERE member_casual = 'casual'
) AS AnnualTable
GROUP BY ride_length, member_casual
ORDER BY totalRides DESC;

-- syntax for members
SELECT TOP 5
  ride_length,
  member_casual,
  COUNT(*) AS totalRides
FROM (
	SELECT ride_length, 'member' AS member_casual FROM [202205-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202206-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202207-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202208-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202209-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202210-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202211-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202212-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202301-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202302-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202303-tripdata] WHERE member_casual = 'member'
    UNION ALL
    SELECT ride_length, 'member' AS member_casual FROM [202304-tripdata] WHERE member_casual = 'member'
) AS AnnualTable
GROUP BY ride_length, member_casual
ORDER BY totalRides DESC;
