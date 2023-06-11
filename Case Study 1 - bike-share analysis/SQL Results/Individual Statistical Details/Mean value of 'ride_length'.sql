-- Another situation where the variable data type needed to be coerced for SQL to operate, May had the longest ride length at 18:33. 

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202205-divvy-tripdata];
MeanRL
1113
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202206-divvy-tripdata];
MeanRL
1099
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202207-divvy-tripdata];
MeanRL
1093
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202208-divvy-tripdata];
MeanRL
1014
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202209-divvy-tripdata];
MeanRL
945
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202210-divvy-tripdata];
MeanRL
847
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202211-divvy-tripdata];
MeanRL
735
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202212-divvy-tripdata];
MeanRL
665
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202301-divvy-tripdata];
MeanRL
649
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202302-divvy-tripdata];
MeanRL
702
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202303-divvy-tripdata];
MeanRL
685
SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202304-divvy-tripdata];
MeanRL
878
