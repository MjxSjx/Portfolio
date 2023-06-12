-- Classic bikes are the most popular product of the three.
  
SELECT rideable_type, COUNT(*) AS totalRides
FROM (
    SELECT rideable_type FROM [202205-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202206-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202207-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202208-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202209-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202210-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202211-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202212-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202301-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202302-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202303-tripdata]
    UNION ALL
    SELECT rideable_type FROM [202304-tripdata]
) AS AnnualTable
GROUP BY  rideable_type;
rideable_type      totalRides
classic_bike        2639052
docked_bike         167795
electric_bike       1727070
