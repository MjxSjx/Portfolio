-- As can be seen most riders from 05-2022 to 4-2023 are members.

SELECT
  member_casual,
  COUNT(*) AS totalRides,
  COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS percentage
FROM (
  SELECT member_casual FROM [202205-divvy-tripdata]
  UNION ALL
  SELECT member_casual FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT member_casual FROM [202304-divvy-tripdata]
) AS AnnualTable
GROUP BY  member_casual;

member_casual	totalRides	percentage
casual	         2358307	    40.25%
member	         3500754	    59.75%
