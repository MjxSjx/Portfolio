-- Using the aggregate function SUM, I found the peak usage of each user type per day of the week:
  
day_of_week    peak_casual_users    peak_member_users
Sunday        	   301598	         310698
Monday         	   210260	         385875
Tuesday       	   204271             433727
Wednesday      	   212641	         440373
Thursday       	   238110	         439959
Friday        	   261439	         385260
Saturday       	   362746	         346960

peak_casual_users	peak_member_users
    Saturday                 Wednesday
    362746	              440373

SELECT
    day_of_week,
    SUM(casual_users) AS peak_casual_users,
    SUM(member_users) AS peak_member_users
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
