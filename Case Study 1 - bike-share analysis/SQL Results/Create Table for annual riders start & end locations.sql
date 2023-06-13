-- Create a table from all 12 sheets of columns (member_casual, start & end stations) for deeper investigation.

CREATE TABLE AnnualTripData (
start_station_name VARCHAR(255), 
end_station_name VARCHAR(255), 
member_casual VARCHAR(50)
);

INSERT INTO AnnualTripData (start_station_name, end_station_name, member_casual)
SELECT start_station_name, end_station_name, member_casual
FROM [202205-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202206-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202207-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202208-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202209-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202210-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202211-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202212-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202301-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202302-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202303-tripdata]

UNION ALL

SELECT start_station_name, end_station_name, member_casual
FROM [202304-tripdata]
