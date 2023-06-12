-- There are more member riders than casual on an annual basis.  

SELECT member_casual, COUNT(*) AS totalRides
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
member_casual   totalRides
casual           1791065
member           2742852
