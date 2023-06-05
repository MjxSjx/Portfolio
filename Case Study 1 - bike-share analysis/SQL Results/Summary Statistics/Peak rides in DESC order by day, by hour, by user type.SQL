-- There are 336 rows here. One row for each hour in a day of the week for a year per user type. The data is below this syntax.
-- 1 = Sunday
-- 7 = Saturday

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
    4	       17	  member      67665
    3	       17	  member      65823
    5	       17	  member	64516
    2	       17	  member	58100
    4	       16	  member	52287
    3	       16	  member	51537
    4	       18	  member	51204
    5	       18	  member	50662
    5	       16	  member	50533
    6	17	member	49757
    3	18	member	49472
    2	18	member	45411
    2	16	member	44833
    6	16	member	44675
    3	8	member	43626
    5	8	member	42713
    4	8	member	42279
    6	18	member	42051
Saturday	15	casual	39387
    3	7	member	37848
    7	16	casual	37738
    7	14	casual	37133
    6	15	member	36673
    4	7	member	36578
    4	19	member	36158
    5	19	member	35821
    5	7	member	35748
    7	13	casual	35691
    5	17	casual	35490
    7	17	casual	35305
    3	19	member	34861
    5	15	member	34184
    7	12	casual	34073
    1	15	casual	34057
    7	16	member	33635
    6	17	casual	33509
    7	15	member	33509
    7	14	member	33454
    7	17	member	33336
    1	14	casual	33091
    4	15	member	33018
7	12	member	32952
4	17	casual	32912
2	8	member	32852
3	15	member	32849
1	16	casual	32661
7	13	member	32584
1	15	member	32506
7	18	casual	32312
5	18	casual	32137
1	13	member	31995
1	16	member	31934
7	11	member	31750
2	19	member	31596
1	13	casual	31538
1	12	member	31504
1	14	member	31275
6	18	casual	31201
3	17	casual	30971
7	18	member	30880
2	15	member	30725
6	19	member	30613
6	16	casual	30604
1	12	casual	30488
1	17	member	30111
7	11	casual	30021
1	11	member	29324
6	14	member	29115
1	17	casual	28939
4	18	casual	28859
6	8	member	28489
6	13	member	28246
2	17	casual	28091
2	7	member	27974
7	10	member	27761
5	16	casual	27711
1	18	member	27352
6	15	casual	27314
6	12	member	27173
3	18	casual	26888
1	11	casual	26709
5	12	member	26591
5	13	member	25879
4	12	member	25593
5	14	member	25559
7	19	casual	25510
4	20	member	25334
4	13	member	25178
6	7	member	25113
3	12	member	25065
7	19	member	25012
4	16	casual	24997
5	9	member	24848
4	14	member	24798
2	18	casual	24749
2	14	member	24711
5	20	member	24663
2	16	casual	24564
2	12	member	24418
2	13	member	24393
3	13	member	24210
3	16	casual	24208
5	19	casual	24182
6	19	casual	24109
1	10	member	24065
1	18	casual	24032
4	9	member	23936
3	20	member	23817
3	14	member	23703
3	9	member	23394
7	10	casual	23381
6	14	casual	23253
7	9	member	22660
6	11	member	22333
4	19	casual	22170
5	11	member	22149
5	15	casual	21590
2	20	member	21570
6	13	casual	21463
4	11	member	21375
6	20	member	21128
1	19	member	21063
2	15	casual	20949
2	11	member	20681
3	11	member	20674
1	10	casual	20324
3	19	casual	20302
5	21	member	20212
6	12	casual	20170
6	9	member	20165
3	6	member	20057
2	9	member	19844
4	21	member	19633
7	20	casual	19434
5	10	member	19114
2	14	casual	18984
4	6	member	18761
1	19	casual	18657
2	19	casual	18604
3	15	casual	18560
7	20	member	18473
4	15	casual	18468
7	22	casual	18250
4	10	member	18246
3	21	member	18151
5	6	member	18140
6	10	member	18135
7	21	casual	17967
5	20	casual	17906
5	14	casual	17889
2	13	casual	17744
3	10	member	17699
6	20	casual	17665
1	9	member	17552
7	23	casual	17371
2	10	member	17075
2	12	casual	16941
4	20	casual	16609
5	13	casual	16374
6	21	member	16226
6	11	casual	16036
7	21	member	16015
7	8	member	16007
2	21	member	15863
5	12	casual	15862
5	22	member	15857
7	9	casual	15784
1	20	member	15648
2	6	member	15587
3	14	casual	15418
4	14	casual	15292
5	21	casual	15213
6	6	member	15063
6	22	casual	15053
1	0	casual	15038
3	13	casual	14686
6	21	casual	14657
3	20	casual	14626
4	21	casual	14514
7	22	member	14451
6	22	member	14382
5	22	casual	14113
3	12	casual	14034
6	23	casual	13985
4	13	casual	13966
4	22	member	13893
2	11	casual	13769
2	20	casual	13680
1	20	casual	13519
4	12	casual	13498
1	9	casual	13129
5	11	casual	12933
5	8	casual	12778
7	23	member	12723
3	21	casual	12476
4	8	casual	12184
1	21	member	12148
6	10	casual	12122
7	0	casual	12040
3	8	casual	11984
3	22	member	11962
6	23	member	11537
1	21	casual	11447
4	11	casual	11427
3	11	casual	11419
4	22	casual	11281
1	8	member	11045
2	21	casual	10934
2	10	casual	10873
1	0	member	10332
5	10	casual	10068
6	8	casual	10031
5	7	casual	10007
2	22	member	9992
1	1	casual	9988
1	22	casual	9937
6	9	casual	9877
3	7	casual	9875
4	7	casual	9713
3	22	casual	9466
7	8	casual	9370
5	9	casual	9367
7	0	member	9352
1	22	member	9300
7	7	member	9295
2	8	casual	9288
5	23	member	9285
7	1	casual	9190
3	10	casual	9050
2	9	casual	8863
4	10	casual	8801
4	9	casual	8767
5	23	casual	8681
3	9	casual	8671
2	22	casual	8500
6	7	casual	8247
1	7	member	7445
4	23	member	7442
1	8	casual	7188
2	7	casual	7162
1	1	member	7058
1	2	casual	6851
4	23	casual	6652
1	23	casual	6648
7	1	member	6556
3	5	member	6492
3	23	member	6319
4	5	member	6303
6	6	casual	5844
5	5	member	5771
1	23	member	5667
6	0	casual	5657
2	23	member	5612
3	23	casual	5568
2	23	casual	5457
5	6	casual	5354
3	6	casual	5319
4	6	casual	5189
7	2	casual	5125
2	5	member	5125
6	5	member	5066
7	6	member	5040
6	0	member	4870
7	7	casual	4802
1	2	member	4564
2	0	casual	4316
2	6	casual	4274
1	7	casual	4253
1	6	member	4213
5	0	casual	3952
5	0	member	3834
7	2	member	3615
1	3	casual	3600
6	1	casual	3397
2	0	member	3255
4	0	member	3159
4	0	casual	3110
3	0	casual	3000
6	1	member	2789
3	0	member	2765
7	3	casual	2724
1	6	casual	2704
7	6	casual	2556
1	3	member	2472
2	1	casual	2412
1	4	casual	2116
7	3	member	2081
5	1	casual	2077
7	5	member	2062
4	5	casual	2022
3	5	casual	1971
6	2	casual	1955
1	5	casual	1922
5	5	casual	1904
1	5	member	1900
5	1	member	1836
6	5	casual	1820
2	1	member	1815
2	5	casual	1787
4	1	casual	1727
3	1	casual	1619
2	2	casual	1614
1	4	member	1608
6	2	member	1573
4	1	member	1519
7	5	casual	1422
3	1	member	1365
3	4	member	1356
7	4	casual	1340
6	4	member	1303
5	2	casual	1255
2	4	member	1250
7	4	member	1228
6	3	casual	1210
4	4	member	1179
5	4	member	1163
2	3	casual	1160
2	2	member	1096
5	2	member	1079
3	2	casual	1041
2	4	casual	1037
6	3	member	1001
4	2	casual	961
6	4	casual	905
5	3	casual	886
3	4	casual	798
4	2	member	794
2	3	member	786
3	2	member	761
4	4	casual	742
5	4	casual	742
5	3	member	727
4	3	casual	714
3	3	casual	713
3	3	member	596
4	3	member	584
