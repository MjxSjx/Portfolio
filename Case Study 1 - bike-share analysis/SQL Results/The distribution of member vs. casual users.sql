-- As can be seen most riders from 05-2022 to 4-2023 are members.

SELECT 
  member_casual,
  COUNT(*) AS totalRides,
  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS percentage
FROM (
  SELECT member_casual FROM [202205-tripdata]
  UNION ALL
  SELECT member_casual FROM [202206-tripdata]
    UNION ALL
    SELECT member_casual FROM [202207-tripdata]
    UNION ALL
    SELECT member_casual FROM [202208-tripdata]
    UNION ALL
    SELECT member_casual FROM [202209-tripdata]
    UNION ALL
    SELECT member_casual FROM [202210-tripdata]
    UNION ALL
    SELECT member_casual FROM [202211-tripdata]
    UNION ALL
    SELECT member_casual FROM [202212-tripdata]
    UNION ALL
    SELECT member_casual FROM [202301-tripdata]
    UNION ALL
    SELECT member_casual FROM [202302-tripdata]
    UNION ALL
    SELECT member_casual FROM [202303-tripdata]
    UNION ALL
    SELECT member_casual FROM [202304-tripdata]
) AS AnnualTable
GROUP BY  member_casual;

member_casual	totalRides	percentage
casual	         1791065	   39.5%
member	         2742852	   60.5%
