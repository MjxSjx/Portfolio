-- Using the aggregate function MAX, I found the peak usage of each user type per day of the week:
  
day_of_week peak_casual_users peak_member_users
Sunday        	78251	          58780
Monday         	47469	          62603
Tuesday       	51509	          76718
Wednesday      	51488	          76616
Thursday       	57978	          76591
Friday        	56868	          72330
Saturday       	95230	          68869

peak_casual_users	peak_member_users
    Saturday                 Tuesday
     95230	              76718

SELECT
    day_of_week,
    MAX(casual_users) AS peak_casual_users,
    MAX(member_users) AS peak_member_users
FROM (
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202205-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202206-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202207-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202208-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202209-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202210-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202211-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202212-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202301-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202302-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202303-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        COUNT(*) AS casual_users,
        0 AS member_users,
        day_of_week
    FROM [202304-divvy-tripdata]
    WHERE member_casual = 'casual'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202205-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202206-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202207-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202208-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202209-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202210-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202211-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202212-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202301-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202302-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202303-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
    UNION ALL
    SELECT 
        0 AS casual_users,
        COUNT(*) AS member_users,
        day_of_week
    FROM [202304-divvy-tripdata]
    WHERE member_casual = 'member'
    GROUP BY day_of_week
) AS subquery
GROUP BY day_of_week;
