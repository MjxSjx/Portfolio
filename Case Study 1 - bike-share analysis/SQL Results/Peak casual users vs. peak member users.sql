-- Using the aggregate function MAX, I found the peak usage of each user type per day of the week:
  
day_of_week peak_casual_users peak_member_users
Sunday        	61197	          46117
Monday         	37533	          50219
Tuesday       	38583	          61220
Wednesday      	38511	          60573
Thursday       	44960	          59743
Friday        	43913	          55504
Saturday       	74543	          53794

peak_casual_users	peak_member_users
    Saturday                 Tuesday
     74543	              61220

SELECT
    day_of_week,
    MAX(casual_users) AS peak_casual_users,
    MAX(member_users) AS peak_member_users
FROM (
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202205-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202206-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202207-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202208-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202209-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202210-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202211-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202212-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202301-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202302-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202303-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202304-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202205-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202206-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202207-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202208-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202209-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202210-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202211-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202212-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202301-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202302-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202303-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202304-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
) AS subquery
GROUP BY day_of_week;
