-- Members top days are during the week
-- Casuals top days are during the weekend
  
SELECT day_of_week, member_casual, COUNT(*) AS totalRides
FROM (
    SELECT day_of_week, member_casual FROM [202205-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202206-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202207-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202208-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202209-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202210-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202211-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202212-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202301-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202302-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202303-tripdata]
    UNION ALL
    SELECT day_of_week, member_casual FROM [202304-tripdata]
) AS AnnualTable
WHERE member_casual IN ('member', 'casual')
GROUP BY day_of_week, member_casual
ORDER BY totalRides DESC;


day_of_week  member_casual totalRides
Wednesday	member	     440373
Thursday	member	     439959
Tuesday	        member	     433727
Monday	        member	     385875
Friday	        member	     385260
Saturady	casual	     362746
Saturday	member	     346960
Sunday	        member	     310698
Sunday	        casual	     301598
Friday	        casual	     261439
Thursday	casual	     238110
Wednesday	casual	     212641
Monday	        casual	     210260
Tuesday	        casual	     204271
