 -- The average ride length in seconds per month. May 22' had the longer user duration.

SELECT
    LEFT(table_name, 6) AS Month,
    AVG(DATEDIFF(SECOND, CAST('00:00:00' AS TIME), ride_length)) AS AvgRL
FROM
    (
    SELECT ride_length, '202205' AS table_name FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202206' AS table_name FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202207' AS table_name FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202208' AS table_name FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202209' AS table_name FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202210' AS table_name FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202211' AS table_name FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202212' AS table_name FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202301' AS table_name FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202302' AS table_name FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202303' AS table_name FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202304' AS table_name FROM [202304-divvy-tripdata]
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
    SELECT ride_length, '202205' AS table_name FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202206' AS table_name FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202207' AS table_name FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202208' AS table_name FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202209' AS table_name FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202210' AS table_name FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202211' AS table_name FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202212' AS table_name FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202301' AS table_name FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202302' AS table_name FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202303' AS table_name FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT ride_length, '202304' AS table_name FROM [202304-divvy-tripdata]
    ) AS AnnualData
GROUP BY LEFT(table_name, 6);

Month    AvgRL
May-22   1113
June-22   1099
July-22   1093
Aug-22   1014
Sept-22    945
Apr-23    878
Oct-22    847
Nov-22    735
Feb-23    702
Mar-23    685
Dec-22    665
Jan-23    649
