 -- The average ride length in seconds per month. May 22' had the longer user duration.
  
SELECT
    LEFT(table_name, 6) AS Month,
    AVG(DATEDIFF(SECOND, CAST('00:00:00' AS TIME), ride_length)) AS AvgRL
FROM
    (
    SELECT ride_length, '202205' AS table_name FROM [202205-tripdata]
    UNION ALL
    SELECT ride_length, '202206' AS table_name FROM [202206-tripdata]
    UNION ALL
    SELECT ride_length, '202207' AS table_name FROM [202207-tripdata]
    UNION ALL
    SELECT ride_length, '202208' AS table_name FROM [202208-tripdata]
    UNION ALL
    SELECT ride_length, '202209' AS table_name FROM [202209-tripdata]
    UNION ALL
    SELECT ride_length, '202210' AS table_name FROM [202210-tripdata]
    UNION ALL
    SELECT ride_length, '202211' AS table_name FROM [202211-tripdata]
    UNION ALL
    SELECT ride_length, '202212' AS table_name FROM [202212-tripdata]
    UNION ALL
    SELECT ride_length, '202301' AS table_name FROM [202301-tripdata]
    UNION ALL
    SELECT ride_length, '202302' AS table_name FROM [202302-tripdata]
    UNION ALL
    SELECT ride_length, '202303' AS table_name FROM [202303-tripdata]
    UNION ALL
    SELECT ride_length, '202304' AS table_name FROM [202304-tripdata]
    ) AS AnnualData
GROUP BY LEFT(table_name, 6)
ORDER BY AvgRL DESC;;

CREATE TABLE AvgRideLength (
    Month VARCHAR(6),
    AvgRideLengthInSeconds FLOAT,
    PRIMARY KEY (Month)
);

INSERT INTO AvgRideLength(Month, AvgRideLengthInSeconds)
SELECT
    LEFT(table_name, 6) AS Month,
    AVG(DATEDIFF(SECOND, CAST('00:00:00' AS TIME), ride_length)) AS AvgRideLengthInSeconds
FROM
    (
    SELECT ride_length, '202205' AS table_name FROM [202205-tripdata]
    UNION ALL
    SELECT ride_length, '202206' AS table_name FROM [202206-tripdata]
    UNION ALL
    SELECT ride_length, '202207' AS table_name FROM [202207-tripdata]
    UNION ALL
    SELECT ride_length, '202208' AS table_name FROM [202208-tripdata]
    UNION ALL
    SELECT ride_length, '202209' AS table_name FROM [202209-tripdata]
    UNION ALL
    SELECT ride_length, '202210' AS table_name FROM [202210-tripdata]
    UNION ALL
    SELECT ride_length, '202211' AS table_name FROM [202211-tripdata]
    UNION ALL
    SELECT ride_length, '202212' AS table_name FROM [202212-tripdata]
    UNION ALL
    SELECT ride_length, '202301' AS table_name FROM [202301-tripdata]
    UNION ALL
    SELECT ride_length, '202302' AS table_name FROM [202302-tripdata]
    UNION ALL
    SELECT ride_length, '202303' AS table_name FROM [202303-tripdata]
    UNION ALL
    SELECT ride_length, '202304' AS table_name FROM [202304-tripdata]
    ) AS AnnualData
GROUP BY LEFT(table_name, 6);

Month    Minutes   AvgRL
May-22   0:19:35   1175
Jul-22   0:19:02   1142
Jun-22   0:19:01   1141
Aug-22   0:17:38   1058
Sep-22   0:16:25    985
Apr-23   0:15:19    919
Oct-22   0:14:52    892
Nov-22   0:12:40    760
Feb-23   0:12:01    721
Mar-23   0:11:42    702
Dec-22   0:11:17    677
Jan-23   0:10:59    659
