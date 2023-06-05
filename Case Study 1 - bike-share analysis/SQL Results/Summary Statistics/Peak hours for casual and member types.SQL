-- The most common time to user bikes is in: 
-- The late afternoon by members 3-6 pm
-- The late afternoon for casuals 3-6 pm

SELECT
  DATEPART(HOUR, started_at) AS hour,
  member_casual,
  COUNT(*) AS totalRides
FROM (
    SELECT started_at, member_casual FROM [202205-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202206-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202207-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202208-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202209-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202210-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202211-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202212-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202301-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202302-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202303-divvy-tripdata]
    UNION ALL
    SELECT started_at, member_casual FROM [202304-divvy-tripdata]
) AS AnnualTable
WHERE member_casual IN ('member', 'casual')
GROUP BY DATEPART(HOUR, started_at), member_casual
ORDER BY totalRides DESC;

hour	member_casual	totalRides
5pm	    member	  369308
4pm	    member	  309434
6pm	    member	  297032
3pm	    member	  233464
5pm	    casual	  225217
8am	    member	  217011
7pm	    member	  215124
4pm	    casual	  202483
6pm	    casual	  200178
12pm	    member	  193296
2pm	    member	  192615
1pm	    member	  192485
3pm	    casual	  180325
7am	    member	  180001
11am	    member	  168286
2pm	    casual	  161060
5pm	    casual	  153534
9am	    member	  152399
1pm	    casual	  151462
8pm	    member	  150633
12pm	    casual	  145066
10am	    member	  142095
11am	    casual	  122314
9pm	    member	  118248
8pm	    casual	  113439
9pm	    casual	  97208
6am	    member	  96861
10am	    casual	  94619
10pm	    member	  89837
10pm	    casual	  86600
9am	    casual	  74458
8am	    casual	  72823
11pm	    casual	  64362
11pm	    member	  58585
7am	    casual	  54059
12am	    casual	  47113
12am	    member	  37567
5am	    member	  32719
6am	    casual	  31240
1am	    casual	  30410
1am	    member	  22938
2am	    casual	  18802
2am	    member	  13482
5am	    casual	  12848
3am	    casual	  11007
4am	    member	  9087
3am	    member	  8247
4am	    casual	  7680
