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
        SELECT day_of_week, member_casual, started_at FROM [202205-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202206-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202207-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202208-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202209-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202210-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202211-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202212-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202301-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202302-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202303-divvy-tripdata]
        UNION ALL
        SELECT day_of_week, member_casual, started_at FROM [202304-divvy-tripdata]
    ) AS AnnualTable
    WHERE member_casual IN ('member', 'casual')
    GROUP BY day_of_week, member_casual, DATEPART(HOUR, started_at)
) AS PeakTable
GROUP BY day_of_week, peak_hour, member_casual
ORDER BY peak_rides DESC;


day_of_week peak_hour member_casual peak_rides
Wednesday      17	  member      67665
Tuesday	       17	  member      65823
Thursday       17	  member	64516
Monday	       17	  member	58100
Wednesday      16	  member	52287
Tuesday	       16	  member	51537
Wednesday      18	  member	51204
Thursday       18	  member	50662
Thursday       16	  member	50533
Friday	       17	member	49757
Tuesday	       18	member	49472
Monday	       18	member	45411
Monday	       16	member	44833
Friday	       16	member	44675
Tuesday	        8	member	43626
Thursday	8	member	42713
Wednesday	8	member	42279
Friday	       18	member	42051
Saturday       15	casual	39387
Tuesday	        7  	member	37848
Saturday       16	casual	37738
Saturday       14	casual	37133
Friday	       15	member	36673
Wednesday	7	member	36578
Wednesday      19	member	36158
Thursday       19	member	35821
Thursday	7	member	35748
Saturday       13	casual	35691
Thursday       17	casual	35490
Saturday       17	casual	35305
Tuesday	       19	member	34861
Thursday       15	member	34184
Saturday       12	casual	34073
Sunday	       15	casual	34057
Saturday       16	member	33635
Friday	       17	casual	33509
Saturday       15	member	33509
Saturday       14	member	33454
Saturday       17	member	33336
Sunday	       14	casual	33091
Wednesday      15	member	33018
Saturday       12	member	32952
Wednesday      17	casual	32912
Monday	        8	member	32852
Tuesday	       15	member	32849
Sunday	       16	casual	32661
Saturday       13	member	32584
Sunday	       15	member	32506
Saturday       18	casual	32312
Thursday       18	casual	32137
Sunday	       13	member	31995
Sunday	       16	member	31934
Saturday       11	member	31750
Monday	       19	member	31596
Sunday	       13	casual	31538
Sunday	       12	member	31504
Sunday	       14	member	31275
Friday	       18	casual	31201
Tuesday	       17	casual	30971
Saturday       18	member	30880
Monday	       15	member	30725
Friday	       19	member	30613
Friday	       16	casual	30604
Sunday	       12	casual	30488
Sunday	       17	member	30111
Saturday       11	casual	30021
Sunday	       11	member	29324
Friday	       14	member	29115
Sunday	       17	casual	28939
Wednesday      18	casual	28859
Friday	        8	member	28489
Friday	       13	member	28246
Monday	       17	casual	28091
Monday	        7	member	27974
Saturday       10	member	27761
Thursday       16	casual	27711
Sunday	       18	member	27352
Friday	       15	casual	27314
Friday	       12	member	27173
Tuesday	       18	casual	26888
Sunday	       11	casual	26709
Thursday       12	member	26591
Thursday       13	member	25879
Wednesday      12	member	25593
Thursday       14	member	25559
Saturday       19	casual	25510
Wednesday      20	member	25334
Wednesday      13	member	25178
Friday	        7	member	25113
Tuesday	       12	member	25065
Saturday       19	member	25012
Wednesday      16	casual	24997
Thursday	9	member	24848
Wednesday      14	member	24798
Monday	       18	casual	24749
Monday	       14	member	24711
Thursday       20	member	24663
Monday	       16	casual	24564
Monday	       12	member	24418
Monday	       13	member	24393
Tuesday	       13	member	24210
Tuesday	       16	casual	24208
Thursday       19	casual	24182
Friday	       19	casual	24109
Sunday	       10	member	24065
Sunday	       18	casual	24032
Wednesday	9	member	23936
Tuesday	       20	member	23817
Tuesday	       14	member	23703
Tuesday	        9	member	23394
Saturday       10	casual	23381
Friday	       14	casual	23253
Saturday	9	member	22660
Friday	       11	member	22333
Wednesday      19	casual	22170
Thursday       11	member	22149
Thursday       15	casual	21590
Monday	       20	member	21570
Friday	       13	casual	21463
Wednesday      11	member	21375
Friday	       20	member	21128
Sunday	       19	member	21063
Monday	       15	casual	20949
Monday	       11	member	20681
Tuesday	       11	member	20674
Sunday	       10	casual	20324
Tuesday	       19	casual	20302
Thursday       21	member	20212
Friday	       12	casual	20170
Friday	        9	member	20165
Tuesday	        6	member	20057
Monday	        9	member	19844
Wednesday      21	member	19633
Saturday       20	casual	19434
Thursday       10	member	19114
Monday	       14	casual	18984
Wednesday	6	member	18761
Sunday	       19	casual	18657
Monday	       19	casual	18604
Tuesday	       15	casual	18560
Saturday       20	member	18473
Wednesday      15	casual	18468
Saturday       22	casual	18250
Wednesday      10	member	18246
Tuesday	       21	member	18151
Thursday	6	member	18140
Friday	       10	member	18135
Saturday       21	casual	17967
Thursday       20	casual	17906
Thursday       14	casual	17889
Monday 	       13	casual	17744
Tuesday	       10	member	17699
Friday	       20	casual	17665
Sunday	        9	member	17552
Saturday       23	casual	17371
Monday	       10	member	17075
Monday	       12	casual	16941
Wednesday      20	casual	16609
Thursday       13	casual	16374
Friday	       21	member	16226
Friday	       11	casual	16036
Saturday       21	member	16015
Saturday        8	member	16007
Monday	       21	member	15863
Thursday       12	casual	15862
Thursday       22	member	15857
Saturday	9	casual	15784
Sunday	       20	member	15648
Monday	        6	member	15587
Tuesday	       14	casual	15418
Wednesday      14	casual	15292
Thursday       21	casual	15213
Friday	        6	member	15063
Friday	       22	casual	15053
Sunday	        0	casual	15038
Tuesday	       13	casual	14686
Friday	       21	casual	14657
Tuesday	       20	casual	14626
Wednesday      21	casual	14514
Saturday       22	member	14451
Friday	       22	member	14382
Thursday       22	casual	14113
Tuesday	       12	casual	14034
Friday	       23	casual	13985
Wednesday      13	casual	13966
Wednesday      22	member	13893
Monday	       11	casual	13769
Monday	       20	casual	13680
Sunday	       20	casual	13519
Wednesday      12	casual	13498
Sunday	        9	casual	13129
Thursday       11	casual	12933
Thursday	8	casual	12778
Saturday       23	member	12723
Tuesday	       21	casual	12476
Wednesday	8	casual	12184
Sunday	       21	member	12148
Friday	       10	casual	12122
Saturday	0	casual	12040
Tuesday	        8	casual	11984
Tuesday	       22	member	11962
Friday	       23	member	11537
Sunday	       21	casual	11447
Wednesday      11	casual	11427
Tuesday	       11	casual	11419
Wednesday      22	casual	11281
Sunday	        8	member	11045
Monday	       21	casual	10934
Monday	       10	casual	10873
Sunday	        0	member	10332
Thursday       10	casual	10068
Friday	        8	casual	10031
Thursday	7	casual	10007
Monday	       22	member	9992
Sunday	        1	casual	9988
Sunday	       22	casual	9937
Friday	        9	casual	9877
Tuesday	        7	casual	9875
Wednesday	7	casual	9713
Tuesday	       22	casual	9466
Saturday	8	casual	9370
Thursday	9	casual	9367
Saturday	0	member	9352
Sunday	       22	member	9300
Saturday	7	member	9295
Monday	        8	casual	9288
Thursday       23	member	9285
Saturday	1	casual	9190
Tuesday	       10	casual	9050
Monday	        9	casual	8863
Wednesday      10	casual	8801
Wednesday	9	casual	8767
Thursday       23	casual	8681
Tuesday	        9	casual	8671
Monday	       22	casual	8500
Friday	        7	casual	8247
Sunday	        7	member	7445
Wednesday      23	member	7442
Sunday	        8	casual	7188
Monday	        7	casual	7162
Sunday	        1	member	7058
Sunday	        2	casual	6851
Wednesday      23	casual	6652
Sunday	       23	casual	6648
Saturday	1	member	6556
Tuesday	        5	member	6492
Tuesday	       23	member	6319
Wednesday	5	member	6303
Friday	        6	casual	5844
Thursday	5	member	5771
Sunday	       23	member	5667
Friday	        0	casual	5657
Monday	       23	member	5612
Tuesday	       23	casual	5568
Monday	       23	casual	5457
Thursday	6	casual	5354
Tuesday	        6	casual	5319
Wednesday	6	casual	5189
Saturday	2	casual	5125
Monday	        5	member	5125
Friday	        5	member	5066
Saturday	6	member	5040
Friday	        0	member	4870
Saturday	7	casual	4802
Sunday	        2	member	4564
Monday	        0 	casual	4316
Monday	        6	casual	4274
Sunday	        7	casual	4253
Sunday	        6	member	4213
Thursday	0	casual	3952
Thursday	0	member	3834
Saturday	2	member	3615
Sunday	        3	casual	3600
Friday	        1	casual	3397
Monday	        0	member	3255
Wednesday	0	member	3159
Wednesday	0	casual	3110
Tuesday	        0	casual	3000
Friday	        1	member	2789
Tuesday	        0	member	2765
Saturday	3	casual	2724
Sunday	        6	casual	2704
Saturday	6	casual	2556
Sunday	        3	member	2472
Monday	        1	casual	2412
Sunday	        4	casual	2116
Saturday	3	member	2081
Thursday	1	casual	2077
Saturday	5	member	2062
Wednesday	5	casual	2022
Tuesday	        5	casual	1971
Friday	        2	casual	1955
Sunday	        5	casual	1922
Thursday	5	casual	1904
Sunday	        5	member	1900
Thursday	1	member	1836
Friday	        5	casual	1820
Monday	        1	member	1815
Monday	        5	casual	1787
Wednesday	1	casual	1727
Tuesday	        1	casual	1619
Monday	        2  	casual	1614
Sunday	        4	member	1608
Friday	        2	member	1573
Wednesday	1	member	1519
Saturday	5	casual	1422
Tuesday	        1	member	1365
Tuesday	        4	member	1356
Saturday	4	casual	1340
Friday	        4	member	1303
Thursday	2	casual	1255
Monday	        4	member	1250
Saturday	4	member	1228
Friday	        3	casual	1210
Wednesday	4	member	1179
Thursday	4	member	1163
Monday	        3	casual	1160
Monday	        2	member	1096
Thursday	2	member	1079
Tuesday	        2	casual	1041
Monday	        4	casual	1037
Friday	        3	member	1001
Wednesday	2	casual	961
Friday	        4	casual	905
Thursday	3	casual	886
Tuesday	        4	casual	798
Wednesday	2	member	794
Monday	        3	member	786
Tuesday	        2	member	761
Wednesday	4	casual	742
Thursday	4	casual	742
Thursday	3	member	727
Wednesday	3	casual	714
Tuesday	        3	casual	713
Tuesday	        3	member	596
Wednesday	3	member	584
