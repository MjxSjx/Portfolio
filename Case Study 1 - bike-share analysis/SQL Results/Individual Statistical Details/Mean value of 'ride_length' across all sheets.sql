-- The mean is affected by outlier field entries that contain 23+ hours. No dynamic version, as its end result was consistently wrong.
 
SELECT AVG(CONVERT(BIGINT, DATEDIFF(SECOND, CAST('00:00:00' AS TIME), ride_length))) AS MeanRL FROM (
    SELECT ride_length FROM [202205-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202206-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202207-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202208-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202209-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202210-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202211-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202212-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202301-divvy-tripdata]	
		UNION
    SELECT ride_length FROM [202302-divvy-tripdata]	
		UNION
    SELECT ride_length FROM [202303-divvy-tripdata]
		UNION
    SELECT ride_length FROM [202304-divvy-tripdata]
) AS AnnualData;
MeanRL
04:21:04
