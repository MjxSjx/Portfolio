-- There are 336 rows here. One row for each hour in a day of the week for a year per user type. The data is below this syntax.

  
SELECT
    day_of_week,
	peak_hour,
    member_casual,
    MAX(totalRides) AS peak_rides
FROM (
    SELECT
        day_of_week,
        member_casual,
        DATEPART(HOUR, started_at) AS peak_hour,
        COUNT(*) AS totalRides
    FROM (
        SELECT day_of_week, member_casual, started_at FROM [202205-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202206-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202207-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202208-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202209-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202210-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202211-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202212-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202301-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202302-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202303-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202304-tripdata]
    ) AS AnnualTable
    WHERE member_casual IN ('member', 'casual')
    GROUP BY day_of_week, member_casual, DATEPART(HOUR, started_at)
) AS PeakTable
GROUP BY day_of_week, peak_hour, member_casual
ORDER BY peak_rides DESC;


day_of_week peak_hour member_casual peak_rides
Wednesday      17	  member      54944
Tuesday	       17	  member      53746
Thursday       17	  member      51785
Monday	       17	  member      47693
Wednesday      16	  member      42166
Tuesday	       16	  member      42044
Wednesday      18	  member      40500
Thursday       18	  member      40396
Thursday       16	  member      39501
Friday	       17	  member      39497
Tuesday	       18	  member      39437
Monday	       18	  member      36641
Monday	       16	  member      36359
Friday	       16	  member      35820
Tuesday	        8	  member      35188
Thursday	8	  member      35105
Wednesday	8	  member      34829
Friday	       18	  member      32617
Saturday       15	  casual      32097
Tuesday	        7  	  member      30797
Saturday       16	  casual      30776
Saturday       14	  casual      29891
Friday	       15	  member      29821
Wednesday	7	  member      29111
Wednesday      19	  member      28443
Thursday       19	  member      28160
Thursday	7	  member      27928
Saturday       13	  casual      27701
Thursday       17	  casual      27545
Saturday       17	  casual      27405
Tuesday	       19	  member      27175
Thursday       15	  member      27106
Saturday       12	  casual      26834
Sunday	       15	  casual      26782
Saturday       16	  member      26696
Friday	       17	  casual      26071
Saturday       15	  member      25972
Saturday       14	  member      25928
Saturday       17	  member      25868
Sunday	       14	  casual      25772
Wednesday      15	  member      25676
Saturday       12	  member      25609
Wednesday      17	  casual      25589
Monday	        8	  member      25587
Tuesday	       15	  member      25576
Sunday	       16	  casual      25458
Saturday       13	  member      25142
Sunday	       15	  member      25127
Saturday       18	  casual      24977
Thursday       18	  casual      24960
Sunday	       13	  member      24956
Sunday	       16	  member      24954
Saturday       11	  member      24945
Monday	       19	  member      24664
Sunday	       13	  casual      24582
Sunday	       12	  member      24272
Sunday	       14	  member      24228
Friday	       18	  casual      24218
Tuesday	       17	  casual      23952
Saturday       18	  member      23951
Monday	       15	  member      23713
Friday	       19	  member      23705
Friday	       16	  casual      23590
Sunday	       12	  casual      23574
Sunday	       17	  member      23472
Saturday       11	  casual      23366
Sunday	       11	  member      23095
Friday	       14	  member      23038
Sunday	       17	  casual      22973
Wednesday      18	  casual      22920
Friday	        8	  member      22437
Friday	       13	  member      21844
Monday	       17	  casual      21782
Monday	        7	  member      21731
Saturday       10	  member      21669
Thursday       16	  casual      21509
Sunday	       18	  member      21049
Friday	       15	  casual      20964
Friday	       12	  member      20822
Tuesday	       18	  casual      20457
Sunday	       11	  casual      20448
Thursday       12	  member      20343
Thursday       13	  member      20326
Wednesday      12	  member      19895
Thursday       14	  member      19609
Saturday       19	  casual      19605
Wednesday      20	  member      19602
Wednesday      13	  member      19578
Friday	        7	  member      19489
Tuesday	       12	  member      19317
Saturday       19	  member      19152
Wednesday      16	  casual      19139
Thursday	9	  member      19135
Wednesday      14	  member      19129
Monday	       18	  casual      19120
Monday	       14	  member      19050
Thursday       20	  member      24663
Monday	       16	  casual      18939
Monday	       12	  member      18937
Monday	       13	  member      18913
Tuesday	       13	  member      18897
Tuesday	       16	  casual      18833
Thursday       19	  casual      18811
Friday	       19	  casual      18797
Sunday	       10	  member      18777
Sunday	       18	  casual      18730
Wednesday	9	  member      18587
Tuesday	       20	  member      18383
Tuesday	       14	  member      18222
Tuesday	        9	  member      18204
Saturday       10	  casual      18050
Friday	       14	  casual      17877
Saturday	9	  member      17876
Friday	       11	  member      17562
Wednesday      19	  casual      17121
Thursday       11	  member      17121
Thursday       15	  casual      16994
Monday	       20	  member      16796
Friday	       13	  casual      16490
Wednesday      11	  member      16474
Friday	       20	  member      16377
Sunday	       19	  member      16355
Monday	       15	  casual      16241
Monday	       11	  member      16035
Tuesday	       11	  member      16023
Sunday	       10	  casual      15956
Tuesday	       19	  casual      15951
Thursday       21	  member      15800
Friday	       12	  casual      15882
Friday	        9	  member      15878
Tuesday	        6	  member      15596
Monday	        9	  member      15503
Wednesday      21	  member      19633
Saturday       20	  casual      15319
Thursday       10	  member      15168
Monday	       14	  casual      15133
Wednesday	6	  member      14973
Sunday	       19	  casual      14764
Monday	       19	  casual      14592
Tuesday	       15	  casual      14558
Saturday       20	  member      14534
Wednesday      15	  casual      14224
Saturday       22	  casual      13945
Wednesday      10	  member      13933
Tuesday	       21	  member      13823
Thursday	6	  member      13811
Friday	       10	  member      13771
Saturday       21	  casual      13738
Thursday       20	  casual      13737
Thursday       14	  casual      13679
Monday 	       13	  casual      13674
Tuesday	       10	  member      13571
Friday	       20	  casual      13570
Sunday	        9	  member      13541
Saturday       23	  casual      13230
Monday	       10	  member      13185
Monday	       12	  casual      13157
Wednesday      20	  casual      13145
Thursday       13	  casual      13096
Friday	       21	  member      13037
Friday	       11	  casual      12577
Saturday       21	  member      12457
Saturday        8	  member      12450
Monday	       21	  member      12434
Thursday       12	  casual      12379
Thursday       22	  member      12208
Saturday	9	  casual      12107
Sunday	       20	  member      12071
Monday	        6	  member      12042
Tuesday	       14	  casual      11957
Wednesday      14	  casual      11772
Thursday       21	  casual      11762
Friday	        6	  member      11595
Friday	       22	  casual      11304
Sunday	        0	  casual      11191
Tuesday	       13	  casual      11166
Friday	       21	  casual      11120
Tuesday	       20	  casual      10950
Wednesday      21	  casual      10822
Saturday       22	  member      10798
Friday	       22	  member      10792
Thursday       22	  casual      10787
Tuesday	       12	  casual      10613
Friday	       23	  casual      10597
Wednesday      13	  casual      10594
Wednesday      22	  member      10504
Monday	       11	  casual      10465
Monday	       20	  casual      10372
Sunday	       20	  casual      10367
Wednesday      12	  casual      10244
Sunday	        9	  casual      10189
Thursday       11	  casual      10186
Thursday	8	  casual      10127
Saturday       23	  member      9864
Tuesday	       21	  casual      9683
Wednesday	8	  casual      9306
Sunday	       21	  member      9260
Friday	       10	  casual      9216
Saturday	0	  casual      9197
Tuesday	        8	  casual      9168
Tuesday	       22	  member      9037
Friday	       23	  member      8919
Sunday	       21	  casual      8873
Wednesday      11	  casual      8787
Tuesday	       11	  casual      8700
Wednesday      22	  casual      8601
Sunday	        8	  member      8586
Monday	       21	  casual      8533
Monday	       10	  casual      8417
Sunday	        0	  member      8257
Thursday       10	  casual      8198
Friday	        8	  casual      7704
Thursday	7	  casual      7512
Monday	       22	  member       7504
Sunday	        1	  casual       7473
Sunday	       22	  casual       7461
Friday	        9	  casual       7432
Tuesday	        7	  casual       7381
Wednesday	7	  casual       7358
Tuesday	       22	  casual       7334
Saturday	8	  casual       7280
Thursday	9	  casual       7280
Saturday	0	  member       7205
Sunday	       22	  member       7137
Saturday	7	  member       7003
Monday	        8	  casual       6929
Thursday       23	  member       6927
Saturday	1	  casual       6871
Tuesday	       10	  casual       6824
Monday	        9	  casual       6814
Wednesday      10	  casual       6749
Wednesday	9	  casual       6687
Thursday       23	  casual       6675
Tuesday	        9	  casual       6449
Monday	       22	  casual       6446
Friday	        7	  casual       6281
Sunday	        7	  member       6199
Wednesday      23	  member       5842
Sunday	        8	  casual       5771
Monday	        7	  casual       5403
Sunday	        1	  member       5390
Sunday	        2	  casual       5358
Wednesday      23	  casual       5322
Sunday	       23	  casual       5165
Saturday	1	  member       6556
Tuesday	        5	  member       5057
Tuesday	       23	  member       4927
Wednesday	5	  member       4796
Friday	        6	  casual       4770
Thursday	5	  member       4744
Sunday	       23	  member       4631
Friday	        0	  casual       4523
Monday	       23	  member       4171
Tuesday	       23	  casual       4129
Monday	       23	  casual       4103
Thursday	6	  casual       4060
Tuesday	        6	  casual       4043
Wednesday	6	  casual       4012
Saturday	2	  casual       3971
Monday	        5	  member       3967
Friday	        5	  member       3953
Saturday	6	  member       3952
Friday	        0	  member       3886
Saturday	7	  casual       3868
Sunday	        2	  member       3649
Monday	        0 	  casual       3556
Monday	        6	  casual       3441
Sunday	        7	  casual       3247
Sunday	        6	  member       3168
Thursday	0	  casual       3160
Thursday	0	  member       3127
Saturday	2	  member       3121
Sunday	        3	  casual       2655
Friday	        1	  casual       2595
Monday	        0	  member       2479
Wednesday	0	  member       2289
Wednesday	0	  casual       2484
Tuesday	        0	  casual       2218
Friday	        1	  member       2111
Tuesday	        0	  member       2039
Saturday	3	  casual       1917
Sunday	        6	  casual       1900
Saturday	6	  casual       1856
Sunday	        3	  member       1839
Monday	        1	  casual       1818
Sunday	        4	  casual       1694
Saturday	3	  member       1690
Thursday	1	  casual       1496
Saturday	5	  member       1446
Wednesday	5	  casual       1395
Tuesday	        5	  casual       1373
Friday	        2	  casual       1342
Sunday	        5	  casual       1334
Thursday	5	  casual       1292
Sunday	        5	  member       1289
Thursday	1	  member       1260
Friday	        5	  casual       1241
Monday	        1	  member       1229
Monday	        5	  casual       1226
Wednesday	1	  casual       1185
Tuesday	        1	  casual       1183
Monday	        2  	  casual       1107
Sunday	        4	  member       1057
Friday	        2	  member       1037
Wednesday	1	  member       1036
Saturday	5	  casual       1021
Tuesday	        1	  member       990
Tuesday	        4	  member       930
Saturday	4	  casual       930
Friday	        4	  member       912
Thursday	2	  casual       907
Monday	        4	  member       879
Saturday	4	  member       819
Friday	        3	  casual       818
Wednesday	4	  member       814
Thursday	4	  member       791
Monday	        3	  casual       789
Monday	        2	  member       784
Thursday	2	  member       716
Tuesday	        2	  casual       677
Monday	        4	  casual       673
Friday	        3	  member       659
Wednesday	2	  casual        624
Friday	        4	  casual        596
Thursday	3	  casual        522
Tuesday	        4	  casual        503
Wednesday	2	  member        489
Monday	        3	  member        488
Tuesday	        2	  member        472
Wednesday	4	  casual        462
Thursday	4	  casual        452
Thursday	3	  member        452
Wednesday	3	  casual        447
Tuesday	        3	  casual        418
Tuesday	        3	  member        400
Wednesday	3	  member        369
