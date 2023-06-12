-- More investigation is required to answer how a customer may only use the bike for 1 second. 
-- However, when querying further, I found MIN(ride_length) at :02, :03, :04, and on. Dynamic syntax option presented. 
 
SELECT MIN(ride_length) AS MinRL FROM (
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
) AS AnnualData
WHERE ride_length > '00:00:00';
MinRL
00:01

--------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'
SELECT MIN(ride_length) AS MinRL FROM (
    ';

-- Generate UNION ALL SELECT statements for each table
SELECT @sql = @sql + N'
    SELECT ride_length FROM ' + QUOTENAME(name) + N'
    UNION ALL'
FROM sys.tables
WHERE name IN (
    '202205-tripdata', '202206-tripdata', '202207-tripdata',
    '202208-tripdata', '202209-tripdata', '202210-tripdata',
    '202211-tripdata', '202212-tripdata', '202301-tripdata',
    '202302-tripdata', '202303-tripdata', '202304-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION ALL')); -- Remove the last UNION ALL

SET @sql = @sql + N') AS AnnualData
WHERE ride_length > ''00:00:00'';';

EXEC sp_executesql @sql;
MinRL
00:01
