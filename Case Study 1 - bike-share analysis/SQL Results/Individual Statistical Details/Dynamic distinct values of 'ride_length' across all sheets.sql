-- More dynamic alternative syntax solutions. Total Distinct ride lengths for the year was 19,503.
   
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM (
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

DistinctRL
19503

---------------------------------------------------------------------------------------------------
DECLARE @sql NVARCHAR(MAX);
SET @sql = N'SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM (';

SELECT @sql = @sql + N'
    SELECT ride_length FROM ' + QUOTENAME(name) + N' -- Distinct ride lengths for table ' + name + '
    UNION'
FROM sys.tables
WHERE name IN (
    '202205-tripdata', '202206-tripdata', '202207-tripdata',
    '202208-tripdata', '202209-tripdata', '202210-tripdata',
    '202211-tripdata', '202212-tripdata', '202301-tripdata',
    '202302-tripdata', '202303-tripdata', '202304-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION'));

SET @sql = @sql + N') AS AnnualData;'

EXEC sp_executesql @sql;

DistinctRL
19503
