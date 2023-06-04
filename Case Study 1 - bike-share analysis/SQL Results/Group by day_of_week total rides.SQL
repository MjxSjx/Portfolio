-- Using GROUP BY to sort by days of the week 1 = Sunday, 7 = Saturday. Saturday is the most popular day to rent a bike.

SELECT day_of_week, COUNT(*) AS totalRides
FROM (
    SELECT day_of_week FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202304-divvy-tripdata]
) AS AnnualTable
GROUP BY day_of_week;


day_of_week totalRides
1            790917
2            760316
3            817065
4            841491
5            879355
6            847560
7            922357







