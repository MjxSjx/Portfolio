-- I manually checked the sheets myself there are 0 instances of a member using a docked bike.

SELECT  
  rideable_type,
  member_casual,
  COUNT(*) AS totalRides,
  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual) AS percentage
FROM (
  SELECT rideable_type, member_casual FROM [202205-tripdata]
  UNION ALL
  SELECT rideable_type, member_casual FROM [202206-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202207-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202208-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202209-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202210-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202211-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202212-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202301-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202302-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202303-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202304-tripdata]
) AS AnnualTable
GROUP BY rideable_type, member_casual;

rideable_type 	member_casual	totalRides	percentage
classic_bike	  casual	  888581	  49.61
classic_bike	  member	  1750471	  63.82
docked_bike	  casual	  167795   	  9.36
docked_bike       member           0               0
electric_bike 	  casual	  734689  	  41.01
electric_bike	  member	  992381  	  36.2
