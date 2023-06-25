-- Another situation where the variable data type needed to be coerced for SQL to operate, May had the longest ride length at 19:35.  

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202205-tripdata];
MeanRL
1175 aka 19:35

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202206-tripdata];
MeanRL
1141 aka 19:01

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202207-tripdata];
MeanRL
1142 aka 19:02

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202208-tripdata];
MeanRL
1058 aka 17:38

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202209-tripdata];
MeanRL
985 aka 16:25

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202210-tripdata];
MeanRL
892 aka 14:52

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202211-tripdata];
MeanRL
841 aka 14:01

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202212-tripdata];
MeanRL
757 aka 12:37

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202301-tripdata];
MeanRL
659 aka 10:59

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202302-tripdata];
MeanRL
785 aka 13:05

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202303-tripdata];
MeanRL
803 aka 13:23

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202304-tripdata];
MeanRL
935 aka 15:35
