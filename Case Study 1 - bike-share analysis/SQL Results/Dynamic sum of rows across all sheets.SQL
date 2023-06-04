-- This syntax felt too pendantic, but it gets the job done. Below is a dynamic alternative to getting the same result.

SELECT SUM(TotalRows) AS TotalRows FROM (
    SELECT COUNT(*) AS TotalRows FROM [202205-divvy-tripdata]
		UNION ALL
    SELECT COUNT(*) AS TotalRows FROM [202206-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202207-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202208-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202209-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202210-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202211-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202212-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202301-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202302-divvy-tripdata]
		UNION ALL
	SELECT COUNT(*) AS TotalRows FROM [202303-divvy-tripdata]
		UNION ALL
    SELECT COUNT(*) AS TotalRows FROM [202304-divvy-tripdata]
) AS AnnualData;

TotalRows
5,859,061

---------------------------------------------------------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'SELECT SUM(TotalRows) AS TotalRows FROM (';

SELECT @sql = @sql + N'
    SELECT COUNT(*) AS TotalRows FROM ' + QUOTENAME(name) + N'
    UNION ALL'
FROM sys.tables
WHERE name IN (
    '202205-divvy-tripdata', '202206-divvy-tripdata', '202207-divvy-tripdata',
    '202208-divvy-tripdata', '202209-divvy-tripdata', '202210-divvy-tripdata',
    '202211-divvy-tripdata', '202212-divvy-tripdata', '202301-divvy-tripdata',
    '202302-divvy-tripdata', '202303-divvy-tripdata', '202304-divvy-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION ALL'));

SET @sql = @sql + N') AS AnnualData;'

EXEC sp_executesql @sql;

TotalRows
5,859,061
