-- Coercion was required to get the ride_length data type to operate in SQL. More investigation is required to answer 
--- how a customer may only use the bike for :01 second.  
-- However, when querying further, I found MIN(ride_length) at :02, :03, :04, and on.
SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202205-tripdata]
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202206-tripdata]
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202207-tripdata]
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202208-tripdata]
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202209-tripdata]
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202210-tripdata] 
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202211-tripdata]
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202212-tripdata]
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202301-tripdata]	 
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202302-tripdata] 
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202303-tripdata]
	WHERE ride_length > '00:00:00'
) subquery;
MinRL
00:00:01

SELECT 
	MIN(ride_length) AS MinRL 
	FROM (SELECT ride_length FROM [202304-tripdata]
	WHERE ride_length > '00:00:00' 
) subquery;
MinRL
00:00:01
