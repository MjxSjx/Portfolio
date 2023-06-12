-- The most common time to user bikes is in: 
-- The late afternoon by members 3-6 pm
-- The late afternoon for casuals 3-6 pm
  
SELECT
  DATEPART(HOUR, started_at) AS hour,
  member_casual,
  COUNT(*) AS totalRides
FROM (
    SELECT started_at, member_casual FROM [202205-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202206-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202207-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202208-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202209-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202210-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202211-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202212-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202301-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202302-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202303-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202304-tripdata]
) AS AnnualTable
WHERE member_casual IN ('member', 'casual')
GROUP BY DATEPART(HOUR, started_at), member_casual
ORDER BY totalRides DESC;

hour	member_casual	totalRides
5pm	    member	  296994
4pm	    member	  247102
6pm	    member	  234026
3pm	    member	  182442
8am	    member	  177202
5pm	    casual	  173877
7pm	    member	  166912
4pm	    casual	  156011
6pm	    casual	  152303
7am	    member	  149847
12pm	    member	  149679
2pm	    member	  148311
1pm	    member	  148054
3pm	    casual	  137444
11am	    member	  130131
2pm	    casual	  123776
9am	    member	  119318
1pm	    casual	  117104
7pm	    member	  115921
8pm         member     115792
12pm	    casual	  112524
10am	    member	  109708
11am	    casual	  95578
9pm	    member	  89465
8pm	    casual	 84662
6am	    member	  80509
10am	    casual	  80509
9pm	    casual	  72390
10pm	    member	  66397
10pm	    casual	 64289
9am	    casual	  56799
8am	    casual	  55166
11pm	    casual	  46990
11pm	    member	  41998
7am	    casual	  40109
12am	    casual	  33942
12am	    member	  26275
5am	    member	  26170
6am	    casual	  23211
1am	    casual	  21597
1am	    member	  21597
2am	    casual	  16029
2am	    member	  8947
5am	    casual	 8768
3am	    casual	  7139
4am	    member	  6178
3am	    member	  5366
4am	    casual	  4733
