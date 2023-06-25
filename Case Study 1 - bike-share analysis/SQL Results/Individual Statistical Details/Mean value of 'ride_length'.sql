-- Another situation where the variable data type needed to be coerced for SQL to operate, May had the longest ride length at 19:35.  

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202205-tripdata];
MeanRL
1170 aka 19:35

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202206-tripdata];
MeanRL
1139 aka 18:59

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202207-tripdata];
MeanRL
1139 aka 18:59

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202208-tripdata];
MeanRL
1057 aka 17:37

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202209-tripdata];
MeanRL
983 aka 16:23

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202210-tripdata];
MeanRL
890 aka 14:20

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202211-tripdata];
MeanRL
757 aka 12:37

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202212-tripdata];
MeanRL
676 aka 11:16

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202301-tripdata];
MeanRL
659 aka 10:59

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202302-tripdata];
MeanRL
718 aka 11:58

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202303-tripdata];
MeanRL
700 aka 11:40

SELECT AVG(DATEDIFF(second, '00:00:00', ride_length)) AS MeanRL FROM [202304-tripdata];
MeanRL
916 aka 15:16
