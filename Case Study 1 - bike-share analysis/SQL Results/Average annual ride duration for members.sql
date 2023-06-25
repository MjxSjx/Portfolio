-- I had to use bigint to corral all the data.
-- The annual average ride duration for members is: 12 minutes and 14 seconds.

avg_rd_seconds
734 aka 12:14

SELECT 
    AVG(CAST(DATEDIFF(SECOND, '00:00:00', CONVERT(time, ride_length)) AS bigint)) AS avg_rd_seconds
FROM (
    SELECT 
        ride_length
    FROM [202205-tripdata]		
    WHERE member_casual = 'member'
    UNION ALL
	    SELECT 
        ride_length
    FROM [202206-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202207-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202208-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202209-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202210-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202211-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202212-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202301-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202302-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202303-tripdata]		
    WHERE member_casual = 'member'
	UNION ALL
	    SELECT 
        ride_length
    FROM [202304-tripdata]		
    WHERE member_casual = 'member'
) AS subquery;
