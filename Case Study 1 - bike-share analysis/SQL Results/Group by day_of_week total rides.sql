-- Using GROUP BY to sort by days of the week. Saturday is the most popular day to rent a bike.  

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


day_of_week   totalRides
Sunday          790917
Monday          760316
Tuesday         817065
Wednesday       841491
Thursday        879355
Friday          847560
Saturday        922357
