-- Top 5 start stations for members in May 22'
SELECT TOP 5 start_station_name, COUNT(*) AS member_start_count
FROM [202205-tripdata]
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY member_start_count DESC

start_station_name	        member_start_count
Ellis Ave & 60th St	               2575
University Ave & 57th St	       2569
Kingsbury St & Kinzie St	       2458
Wells St & Concord Ln	               2269
Clark St & Elm St	               2241



-- Top 5 end stations for members in May 22'
SELECT TOP 5 end_station_name, COUNT(*) AS member_end_count
FROM [202205-tripdata]
WHERE member_casual = 'member'
GROUP BY end_station_name
ORDER BY member_end_count DESC

end_station_name	          member_end_count
University Ave & 57th St	       2654
Ellis Ave & 60th St	               2556
Kingsbury St & Kinzie St	       2455
Clark St & Elm St	               2295
Wells St & Concord Ln	               2294




-- Top 5 start stations for casual users in May 22'
SELECT TOP 5 start_station_name, COUNT(*) AS casual_start_count
FROM [202205-tripdata]
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY casual_start_count DESC

start_station_name	        casual_start_count
Streeter Dr & Grand Ave	               7473
DuSable Lake Shore Dr & Monroe St      4261
Michigan Ave & Oak St	               3397
Millennium Park	                       3199
DuSable Lake Shore Dr & North Blvd     3061



-- Top 5 end stations for casual users in May 22'
SELECT TOP 5 end_station_name, COUNT(*) AS casual_end_count
FROM [202205-tripdata]
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY casual_end_count DESC

end_station_name	         casual_end_count
Streeter Dr & Grand Ave	              7914
DuSable Lake Shore Dr & Monroe   	4041
Michigan Ave & Oak St	               3688
DuSable Lake Shore Dr & North Blvd 3645
Millennium Park                    3334
