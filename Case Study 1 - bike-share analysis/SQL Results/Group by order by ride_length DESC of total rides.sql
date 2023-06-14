-- 4:34 minutes is the most common rental duration annually.
 
SELECT ride_length, COUNT(*) AS totalRides
FROM (
    SELECT ride_length FROM [202205-tripdata]
    UNION ALL
    SELECT ride_length FROM [202206-tripdata]
    UNION ALL
    SELECT ride_length FROM [202207-tripdata]
    UNION ALL
    SELECT ride_length FROM [202208-tripdata]
    UNION ALL
    SELECT ride_length FROM [202209-tripdata]
    UNION ALL
    SELECT ride_length FROM [202210-tripdata]
    UNION ALL
    SELECT ride_length FROM [202211-tripdata]
    UNION ALL
    SELECT ride_length FROM [202212-tripdata]
    UNION ALL
    SELECT ride_length FROM [202301-tripdata]
    UNION ALL
    SELECT ride_length FROM [202302-tripdata]
    UNION ALL
    SELECT ride_length FROM [202303-tripdata]
    UNION ALL
    SELECT ride_length FROM [202304-tripdata]
) AS AnnualTable
GROUP BY  ride_length
ORDER BY totalRides DESC;

ride_length   totalRides
00:04:34         5103
00:04:52         5098
00:05:43         5076
00:05:34         5074
00:05:26         5061
00:05:24         5033
00:05:03         5030
00:04:59         5028
00:04:49         5021
00:04:35         5014
