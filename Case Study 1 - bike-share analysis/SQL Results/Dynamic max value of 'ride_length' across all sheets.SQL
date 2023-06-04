 -- The results surprise no one, as more investigation is needed. Pedantic free dynamic version as well.

SELECT MAX(ride_length) AS MaxRideLength FROM (
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
) AS CombinedData;
MaxRideLength
23:59:56

------------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'SELECT MAX(ride_length) AS MaxRideLength FROM (';

SELECT @sql = @sql + N'
    SELECT ride_length FROM ' + QUOTENAME(name) + N' -- Ride lengths for table ' + name + '
    UNION'
FROM sys.tables
WHERE name IN (
    '202205-divvy-tripdata', '202206-divvy-tripdata', '202207-divvy-tripdata',
    '202208-divvy-tripdata', '202209-divvy-tripdata', '202210-divvy-tripdata',
    '202211-divvy-tripdata', '202212-divvy-tripdata', '202301-divvy-tripdata',
    '202302-divvy-tripdata', '202303-divvy-tripdata', '202304-divvy-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION')); 

SET @sql = @sql + N') AS CombinedData;'

EXEC sp_executesql @sql;
MaxRideLength
23:59:56
