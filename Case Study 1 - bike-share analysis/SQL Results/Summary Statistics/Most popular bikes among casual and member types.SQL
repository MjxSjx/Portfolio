-- I manually checked the sheets myself there are 0 instances of a member using a docked bike.

SELECT
  rideable_type,
  member_casual,
  COUNT(*) AS totalRides,
  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual) AS percentage
FROM (
  SELECT rideable_type, member_casual FROM [202205-divvy-tripdata]
  UNION ALL
  SELECT rideable_type, member_casual FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT rideable_type, member_casual FROM [202304-divvy-tripdata]
) AS AnnualTable
GROUP BY rideable_type, member_casual;

rideable_type 	member_casual	totalRides	percentage
classic_bike	  casual	       891246	    37.791771809183
classic_bike	  member	       1751339	  50.027479794352
docked_bike	    casual	       170518   	7.230525966297
docked_bike     member         0          0
electric_bike 	casual	       1296543  	54.977702224519
electric_bike	  member	       1749415  	49.972520205647
