-- The mean is affected by outlier field entries that contain 24 hours. No dynamic version, as its end result was consistently wrong.
-- Keep in mind that these results are skewed by many repair entries that are within or exceed 24 hours.'

SELECT AVG(CONVERT(BIGINT, DATEDIFF(SECOND, CAST('00:00:00' AS TIME), TRY_CONVERT(TIME, ride_length)))) AS MeanRL
FROM (
    SELECT ride_length FROM [202205-tripdata]
    UNION
    SELECT ride_length FROM [202206-tripdata]
    UNION
    SELECT ride_length FROM [202207-tripdata]
    UNION
    SELECT ride_length FROM [202208-tripdata]
    UNION
    SELECT ride_length FROM [202209-tripdata]
    UNION
    SELECT ride_length FROM [202210-tripdata]
    UNION
    SELECT ride_length FROM [202211-tripdata]
    UNION
    SELECT ride_length FROM [202212-tripdata]
    UNION
    SELECT ride_length FROM [202301-tripdata]    
    UNION
    SELECT ride_length FROM [202302-tripdata]    
    UNION
    SELECT ride_length FROM [202303-tripdata]
    UNION
    SELECT ride_length FROM [202304-tripdata]
) AS AnnualData;

MeanRL
15550 aka 4 hours and 19 minutes
