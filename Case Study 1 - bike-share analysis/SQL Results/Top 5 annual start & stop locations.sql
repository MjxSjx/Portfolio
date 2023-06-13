-- Top 5 start stations for members annually 5/22-4/23
SELECT TOP 5 start_station_name, COUNT(*) AS member_start_count
FROM AnnualTripData
WHERE member_casual = 'member'
GROUP BY start_station_name
ORDER BY member_start_count DESC;

start_station_name	              member_start_count
Kingsbury St & Kinzie St	              23814
Clark St & Elm St	                21656
Clinton St & Washington Blvd	          20467
Wells St & Concord Ln	            20225
Loomis St & Lexington St	              19831


-- Top 5 end stations for members annually 5/22-4/23
SELECT TOP 5 end_station_name, COUNT(*) AS member_end_count
FROM AnnualTripData
WHERE member_casual = 'member'
GROUP BY end_station_name
ORDER BY member_end_count DESC;

end_station_name	                member_end_count
Kingsbury St & Kinzie St	             23603
Clark St & Elm St	               21991
Clinton St & Washington Blvd	         21388
Wells St & Concord Ln	           20990
University Ave & 57th St	             20174



-- Top 5 start stations for casual users annually 5/22-4/23
SELECT TOP 5 start_station_name, COUNT(*) AS casual_start_count
FROM AnnualTripData
WHERE member_casual = 'casual'
GROUP BY start_station_name
ORDER BY casual_start_count DESC;

start_station_name	              casual_start_count
Streeter Dr & Grand Ave	                54340
DuSable Lake Shore Dr & Monroe St	      30407
Michigan Ave & Oak St	                  23851
Millennium Park	                        23723
DuSable Lake Shore Dr & North Blvd	    22156


-- Top 5 end stations for casual users annually 5/22-4/23
SELECT TOP 5 end_station_name, COUNT(*) AS casual_end_count
FROM AnnualTripData
WHERE member_casual = 'casual'
GROUP BY end_station_name
ORDER BY casual_end_count DESC;

end_station_name	               casual_end_count
Streeter Dr & Grand Ave	                      57429
DuSable Lake Shore Dr & Monroe St	      28231
Millennium Park	                              25592
Michigan Ave & Oak St	                      25540
DuSable Lake Shore Dr & North Blvd	      25361
