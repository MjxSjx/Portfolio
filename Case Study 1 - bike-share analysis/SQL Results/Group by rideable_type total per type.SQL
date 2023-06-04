-- Electric bikes are the most popular product of the three.

SELECT rideable_type, COUNT(*) AS totalRides
FROM (
    SELECT rideable_type FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202304-divvy-tripdata]
) AS AnnualTable
GROUP BY  rideable_type;
rideable_type      totalRides
classic_bike        2642585
docked_bike         170518
electric_bike       3045958





