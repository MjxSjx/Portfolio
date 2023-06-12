-- This syntax felt too pendantic, but it gets the job done. Below is a dynamic alternative to getting the same result.
  
SELECT SUM(TotalRows) AS TotalRows FROM (
    SELECT COUNT(*) AS TotalRows FROM [202205-tripdata]
		UNION ALL
    SELECT COUNT(*) AS TotalRows FROM [202206-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202207-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202208-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202209-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202210-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202211-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202212-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202301-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202302-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202303-tripdata]
		UNION ALL
    SELECT COUNT(*) AS TotalRows FROM [202304-tripdata]
) AS AnnualData;

TotalRows
4,533,917

---------------------------------------------------------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'SELECT SUM(TotalRows) AS TotalRows FROM (';

SELECT @sql = @sql + N'
    SELECT COUNT(*) AS TotalRows FROM ' + QUOTENAME(name) + N'
    UNION ALL'
FROM sys.tables
WHERE name IN (
    '202205-tripdata', '202206-tripdata', '202207-tripdata',
    '202208-tripdata', '202209-tripdata', '202210-tripdata',
    '202211-tripdata', '202212-tripdata', '202301-tripdata',
    '202302-tripdata', '202303-tripdata', '202304-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION ALL'));

SET @sql = @sql + N') AS AnnualData;'

EXEC sp_executesql @sql;

TotalRows
4,533,917
