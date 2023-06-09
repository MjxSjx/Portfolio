-- July contains the largest set of unique durations. What is surprising is that May 22 was so low. More investigation is required.

SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202205-divvy-tripdata];
DistinctRL
789
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202206-divvy-tripdata];
DistinctRL
832
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202207-divvy-tripdata];
DistinctRL
11834
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202208-divvy-tripdata];
DistinctRL
11093
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202209-divvy-tripdata];
DistinctRL
10328
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202210-divvy-tripdata];
DistinctRL
8986
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202211-divvy-tripdata];
DistinctRL
6521
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202212-divvy-tripdata];
DistinctRL
4747
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202301-divvy-tripdata];
DistinctRL
4639
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202302-divvy-tripdata];
DistinctRL
5238
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202303-divvy-tripdata];
DistinctRL
5592
SELECT COUNT(DISTINCT ride_length) AS DistinctRL FROM [202304-divvy-tripdata];
DistinctRL
8493
