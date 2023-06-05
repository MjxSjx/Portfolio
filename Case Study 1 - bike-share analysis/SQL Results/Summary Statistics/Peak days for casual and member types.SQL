-- Members top days are during the week
-- Casuals top days are during the weekend

SELECT day_of_week, member_casual, COUNT(*) AS totalRides
FROM (
    SELECT day_of_week, member_casual FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202304-divvy-tripdata]
) AS AnnualTable
WHERE member_casual IN ('member', 'casual')
GROUP BY day_of_week, member_casual
ORDER BY totalRides DESC;

day_of_week  member_casual	totalRides
Thursday	     member	       560884
Wednesday	     member	       556916
Tuesday	         member	       544402
Friday	         member	       497476
Monday	         member	       484564
Saturady	     casual	       467926
Saturday	     member	       454431
Sunday	         member	       402081
Sunday	         casual	       388836
Friday	         casual	       350084
Thursday	     casual	       318471
Wednesday	     casual	       284575
Monday	         casual	       275752
Tuesday	         casual	       272663
