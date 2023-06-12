-- Using GROUP BY to sort by days of the week. Saturday is the most popular day to rent a bike.  

SELECT day_of_week, COUNT(*) AS totalRides
FROM (
    SELECT day_of_week FROM [202205-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202206-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202207-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202208-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202209-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202210-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202211-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202212-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202301-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202302-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202303-tripdata]
    UNION ALL
    SELECT day_of_week FROM [202304-tripdata]
) AS AnnualTable
GROUP BY day_of_week;


day_of_week   totalRides
Sunday          612296
Monday          596135
Tuesday         637998
Wednesday       653014
Thursday        678069
Friday          646699
Saturday        709706
