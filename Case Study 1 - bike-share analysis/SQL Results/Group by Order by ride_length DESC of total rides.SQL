-- 6 minutes is the most common rental duration annually.

SELECT ride_length, COUNT(*) AS totalRides
FROM (
    SELECT ride_length FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT ride_length FROM [202304-divvy-tripdata]
) AS AnnualTable
GROUP BY  ride_length
ORDER BY totalRides DESC;

ride_length   totalRides
00:06:00         82530
00:07:00         81111
00:05:00         80745
00:08:00         77662
00:04:00         73772
00:09:00         73654
00:10:00         68108
00:11:00         62736
00:03:00         57421
00:12:00         57073
