-- Again, i'm not here to judge what information a stakeholder seeks. Only to fullfill the role using data. Dynamic version included. 

SELECT COUNT(DISTINCT day_of_week) AS DistinctDoW FROM (
    SELECT day_of_week FROM [202205-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202206-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202207-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202208-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202209-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202210-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202211-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202212-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202301-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202302-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202303-divvy-tripdata]
    UNION
    SELECT day_of_week FROM [202304-divvy-tripdata]
) AS AnnualData;
DistinctDoW
7

------------------------------------------------------------------------------------------------

DECLARE @sql NVARCHAR(MAX);
SET @sql = N'
SELECT COUNT(DISTINCT day_of_week) AS DistinctDoW FROM (
    ';

-- Generate UNION ALL SELECT statements for each table
SELECT @sql = @sql + N'
    SELECT day_of_week FROM ' + QUOTENAME(name) + N'
    UNION ALL'
FROM sys.tables
WHERE name IN (
    '202205-divvy-tripdata', '202206-divvy-tripdata', '202207-divvy-tripdata',
    '202208-divvy-tripdata', '202209-divvy-tripdata', '202210-divvy-tripdata',
    '202211-divvy-tripdata', '202212-divvy-tripdata', '202301-divvy-tripdata',
    '202302-divvy-tripdata', '202303-divvy-tripdata', '202304-divvy-tripdata'
);

SET @sql = LEFT(@sql, LEN(@sql) - LEN('UNION ALL')); -- Remove the last UNION ALL

SET @sql = @sql + N') AS AnnualData;';

EXEC sp_executesql @sql;
DistinctDoW
7
