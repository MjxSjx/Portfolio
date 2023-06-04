-- More investigation is required to answer how a customer may only use the bike for :01 second. However, when querying further 
-- I found MIN(ride_lengths) at :02, :03, :04 and on.
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202205-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
  MinRL
00:01:00
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202206-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202207-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202208-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202209-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202210-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202211-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202212-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202301-divvy-tripdata]	 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202302-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202303-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202304-divvy-tripdata] 
	WHERE ride_length > '00:00:00') 
	AS subquery;
