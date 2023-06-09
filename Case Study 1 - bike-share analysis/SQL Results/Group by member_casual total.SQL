-- There are more member riders than casual on an annual basis.

SELECT member_casual, COUNT(*) AS totalRides
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
member_casual   totalRides
casual           2358307
member           3500754
