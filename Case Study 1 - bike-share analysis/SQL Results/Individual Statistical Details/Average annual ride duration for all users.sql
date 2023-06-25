-- I had to use bigint to corral all the data.
-- The annual average ride duration for all users is: 15 minutes and 0 seconds.

avg_rd_seconds
990 aka 16:30

SELECT 
    AVG(CAST(DATEDIFF(SECOND, '00:00:00', CONVERT(time, ride_length)) AS bigint)) AS avg_rd_seconds
FROM (
    SELECT 
        ride_length
    FROM [202205-tripdata]		
    UNION ALL
	    SELECT 
        ride_length
    FROM [202206-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202207-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202208-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202209-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202210-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202211-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202212-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202301-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202302-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202303-tripdata]		
	UNION ALL
	    SELECT 
        ride_length
    FROM [202304-tripdata]		
) AS subquery;
