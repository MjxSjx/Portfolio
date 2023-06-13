-- Top 5 start stations for members in Jan 23'
SELECT TOP 5 start_station_name, COUNT(*) AS member_start_count
FROM [202301-tripdata]
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY member_start_count DESC

start_station_name	            member_start_count
Ellis Ave & 60th St	                   1632
University Ave & 57th St	           1617
Clinton St & Washington Blvd	           1368
Kingsbury St & Kinzie St	           1195
Ellis Ave & 55th St                        1131


-- Top 5 end stations for members in Jan 23'
SELECT TOP 5 end_station_name, COUNT(*) AS member_end_count
FROM [202301-tripdata]
WHERE member_casual = 'member'
GROUP BY end_station_name
ORDER BY member_end_count DESC

end_station_name	             member_end_count
Ellis Ave & 60th St	                   1673
University Ave & 57th St	           1590
Clinton St & Washington Blvd	           1487
Kingsbury St & Kinzie St	           1255
Ellis Ave & 55th St                        1166



-- Top 5 start stations for casual users in Jan 23'
SELECT TOP 5 start_station_name, COUNT(*) AS casual_start_count
FROM [202301-tripdata]
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY casual_start_count DESC

start_station_name	           casual_start_count
Shedd Aquarium	                           306
Ellis Ave & 60th St	                   285
Streeter Dr & Grand Ave	                   282
University Ave & 57th St	           262
Sheffield Ave & Fullerton Ave	           242


-- Top 5 end stations for casual users in Jan 23'
SELECT TOP 5 end_station_name, COUNT(*) AS casual_end_count
FROM [202301-tripdata]
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY casual_end_count DESC

end_station_name	             casual_end_count
Streeter Dr & Grand Ave	                   321
University Ave & 57th St	           314
Millennium Park	                           287
Ellis Ave & 60th St	                   259
Shedd Aquarium	                           236
