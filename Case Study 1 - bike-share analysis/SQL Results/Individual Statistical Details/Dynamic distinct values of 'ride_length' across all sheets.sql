-- More dynamic alternative syntax solutions. Total Distinct ride lengths for the year was 19,122.
  
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM (
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
DistinctRL
19601
---------------------------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM (';

SELECT @sql = @sql + N'
    SELECT ride_length FROM ' + QUOTENAME(name) + N' -- Distinct ride lengths for table ' + name + '
    UNION'
FROM sys.tables
WHERE name IN (
    '202205-divvy-tripdata', '202206-divvy-tripdata', '202207-divvy-tripdata',
    '202208-divvy-tripdata', '202209-divvy-tripdata', '202210-divvy-tripdata',
    '202211-divvy-tripdata', '202212-divvy-tripdata', '202301-divvy-tripdata',
    '202302-divvy-tripdata', '202303-divvy-tripdata', '202304-divvy-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION'));

SET @sql = @sql + N') AS AnnualData;'

EXEC sp_executesql @sql;
DistinctRL
19601
