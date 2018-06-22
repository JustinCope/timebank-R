
######################## MAKEINSTANCE ########################


summary(instanceData)
#     eventID          eiid             tense                         aspect    
#  d4e30  :   2   d1ei392:   1   PAST      :2153   NONE                  :7315  
#  d8e229 :   2   d1ei418:   1   PRESENT   :1415   PROGRESSIVE           : 190  
#  d8e12  :   2   d1ei375:   1   NONE      :2793   PERFECTIVE            : 415  
#  d11e2  :   2   d1ei402:   1   FUTURE    : 284   PERFECTIVE_PROGRESSIVE:  20  
#  d14e26 :   2   d1ei382:   1   INFINITIVE: 782                                
#  d1e20  :   1   d1ei429:   1   PRESPART  : 361                                
#  (Other):7929   (Other):7934   PASTPART  : 152  
#                              
#  polarity            pos          modality     cardinality  
#  POS:7651   VERB       :5122   would  : 127   PLURAL :   5  
#  NEG: 289   NOUN       :2225   could  :  49   2      :   4  
#             ADJECTIVE  : 266   may    :  31   4      :   3  
#             PREPOSITION:  28   can    :  26   EVERY  :   2  
#             OTHER      : 299   none   :  21   7      :   2  
#                               (Other):  66   (Other):  14  
#                               NA's   :7620   NA's   :7910 


######################## rare attributes ########################

# cardinality = getNodeSet(docs,"//MAKEINSTANCE[@cardinality]")
length(cardinality)
# # 30      

# plurals = getNodeSet(docs,"//MAKEINSTANCE[@cardinality='PLURAL']")
length(plurals)
# # 5   	
                                  
# modality = getNodeSet(docs,"//MAKEINSTANCE[@modality]")
length(modality)
# # 320

######################## cross tabulations ########################


# pos * class (also percentages are given)
# pos * tense
# pos * aspect
# class * aspect

# ??? class*tense, tense*aspect ???

twoFactorFreqPerc("pos","class",instanceEventData)

#              class
# pos           OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB              2614   244     435       986       229         48      566
#   NOUN              1548   411      94        38        29          0      105
#   ADJECTIVE           47   147      55         4         3          0       10
#   PREPOSITION          0    28       0         0         0          0        0
#   OTHER                9   288       0         0         1          0        1

# [1] "Percentages:"
#              class
# pos           OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB              0.33  0.03    0.05      0.12      0.03       0.01     0.07
#   NOUN              0.19  0.05    0.01      0.00      0.00       0.00     0.01
#   ADJECTIVE         0.01  0.02    0.01      0.00      0.00       0.00     0.00
#   PREPOSITION       0.00  0.00    0.00      0.00      0.00       0.00     0.00
#   OTHER             0.00  0.04    0.00      0.00      0.00       0.00     0.00

# [1] "Row Percentages:"
#              class
# pos           OCCURRENCE  STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB             51.03   4.76    8.49     19.25      4.47       0.94    11.05
#   NOUN             69.57  18.47    4.22      1.71      1.30       0.00     4.72
#   ADJECTIVE        17.67  55.26   20.68      1.50      1.13       0.00     3.76
#   PREPOSITION       0.00 100.00    0.00      0.00      0.00       0.00     0.00
#   OTHER             3.01  96.32    0.00      0.00      0.33       0.00     0.33

#              class
# pos            Total
#   VERB        100.00
#   NOUN        100.00
#   ADJECTIVE   100.00
#   PREPOSITION 100.00
#   OTHER       100.00

# [1] "Column Percentages:"
#              class
# pos           OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB             61.97  21.8    74.5     95.91     87.40        100    82.99
#   NOUN             36.70  36.8    16.1      3.70     11.07          0    15.40
#   ADJECTIVE         1.11  13.2     9.4      0.39      1.15          0     1.47
#   PREPOSITION       0.00   2.5     0.0      0.00      0.00          0     0.00
#   OTHER             0.21  25.8     0.0      0.00      0.38          0     0.15
#   Total           100.00 100.0   100.0    100.00    100.00        100   100.00



twoFactorFreqPerc("pos","tense",instanceEventData)

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB        2083    1252  241    271        762      361      152
#   NOUN          19      37 2162      2          5        0        0
#   ADJECTIVE     33      90  129     11          3        0        0
#   PREPOSITION    4      19    5      0          0        0        0
#   OTHER         14      17  256      0         12        0        0

# [1] "Percentages:"
#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB        0.26    0.16 0.03   0.03       0.10     0.05     0.02
#   NOUN        0.00    0.00 0.27   0.00       0.00     0.00     0.00
#   ADJECTIVE   0.00    0.01 0.02   0.00       0.00     0.00     0.00
#   PREPOSITION 0.00    0.00 0.00   0.00       0.00     0.00     0.00
#   OTHER       0.00    0.00 0.03   0.00       0.00     0.00     0.00

# [1] "Row Percentages:"
#              tense
# pos             PAST PRESENT   NONE FUTURE INFINITIVE PRESPART PASTPART  Total
#   VERB         40.67   24.44   4.71   5.29      14.88     7.05     2.97 100.00
#   NOUN          0.85    1.66  97.17   0.09       0.22     0.00     0.00 100.00
#   ADJECTIVE    12.41   33.83  48.50   4.14       1.13     0.00     0.00 100.00
#   PREPOSITION  14.29   67.86  17.86   0.00       0.00     0.00     0.00 100.00
#   OTHER         4.68    5.69  85.62   0.00       4.01     0.00     0.00 100.00

# [1] "Column Percentages:"
#              tense
# pos             PAST PRESENT   NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB         96.75    88.5   8.63   95.4      97.44      100      100
#   NOUN          0.88     2.6  77.41    0.7       0.64        0        0
#   ADJECTIVE     1.53     6.4   4.62    3.9       0.38        0        0
#   PREPOSITION   0.19     1.3   0.18    0.0       0.00        0        0
#   OTHER         0.65     1.2   9.17    0.0       1.53        0        0
#   Total       100.00   100.0 100.00  100.0     100.00      100      100



twoFactorFreqPerc("pos","aspect",instanceEventData)

#              aspect
# pos           NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   VERB        4528         189        385                     20
#   NOUN        2216           0          9                      0
#   ADJECTIVE    251           1         14                      0
#   PREPOSITION   24           0          4                      0
#   OTHER        296           0          3                      0

# [1] "Percentages:"
#              aspect
# pos           NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   VERB        0.57        0.02       0.05                   0.00
#   NOUN        0.28        0.00       0.00                   0.00
#   ADJECTIVE   0.03        0.00       0.00                   0.00
#   PREPOSITION 0.00        0.00       0.00                   0.00
#   OTHER       0.04        0.00       0.00                   0.00

# [1] "Row Percentages:"
#              aspect
# pos             NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE  Total
#   VERB         88.40        3.69       7.52                   0.39 100.00
#   NOUN         99.60        0.00       0.40                   0.00 100.00
#   ADJECTIVE    94.36        0.38       5.26                   0.00 100.00
#   PREPOSITION  85.71        0.00      14.29                   0.00 100.00
#   OTHER        99.00        0.00       1.00                   0.00 100.00

# [1] "Column Percentages:"
#              aspect
# pos             NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   VERB         61.90       99.47      92.77                    100
#   NOUN         30.29        0.00       2.17                      0
#   ADJECTIVE     3.43        0.53       3.37                      0
#   PREPOSITION   0.33        0.00       0.96                      0
#   OTHER         4.05        0.00       0.72                      0
#   Total       100.00      100.00     100.00                    100



twoFactorFreqPerc("class","tense",instanceEventData)

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE  897     540 1712    168        574      233       94
#   STATE        87     220  717     38         31        4       21
#   I_STATE      96     297  131     14         21       11       14
#   REPORTING   772     145   39      4         19       43        6
#   ASPECTUAL    71      57   49     24         41       15        5
#   PERCEPTION    9      17    5      5          9        0        3
#   I_ACTION    221     139  140     31         87       55        9

# [1] "Percentages:"
#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE 0.11    0.07 0.22   0.02       0.07     0.03     0.01
#   STATE      0.01    0.03 0.09   0.00       0.00     0.00     0.00
#   I_STATE    0.01    0.04 0.02   0.00       0.00     0.00     0.00
#   REPORTING  0.10    0.02 0.00   0.00       0.00     0.01     0.00
#   ASPECTUAL  0.01    0.01 0.01   0.00       0.01     0.00     0.00
#   PERCEPTION 0.00    0.00 0.00   0.00       0.00     0.00     0.00
#   I_ACTION   0.03    0.02 0.02   0.00       0.01     0.01     0.00

# [1] "Row Percentages:"
#             tense
# class          PAST PRESENT   NONE FUTURE INFINITIVE PRESPART PASTPART  Total
#   OCCURRENCE  21.27   12.80  40.59   3.98      13.61     5.52     2.23 100.00
#   STATE        7.78   19.68  64.13   3.40       2.77     0.36     1.88 100.00
#   I_STATE     16.44   50.86  22.43   2.40       3.60     1.88     2.40 100.00
#   REPORTING   75.10   14.11   3.79   0.39       1.85     4.18     0.58 100.00
#   ASPECTUAL   27.10   21.76  18.70   9.16      15.65     5.73     1.91 100.00
#   PERCEPTION  18.75   35.42  10.42  10.42      18.75     0.00     6.25 100.00
#   I_ACTION    32.40   20.38  20.53   4.55      12.76     8.06     1.32 100.00

# [1] "Column Percentages:"
#             tense
# class          PAST PRESENT   NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE  41.66    38.2  61.30   59.1       73.4     64.5     61.8
#   STATE        4.04    15.6  25.67   13.4        4.0      1.1     13.8
#   I_STATE      4.46    21.0   4.69    4.9        2.7      3.0      9.2
#   REPORTING   35.86    10.2   1.40    1.4        2.4     11.9      4.0
#   ASPECTUAL    3.30     4.0   1.75    8.4        5.2      4.2      3.3
#   PERCEPTION   0.42     1.2   0.18    1.8        1.1      0.0      2.0
#   I_ACTION    10.26     9.8   5.01   10.9       11.1     15.2      5.9
#   Total      100.00   100.0 100.00  100.0      100.0    100.0    100.0



twoFactorFreqPerc("class","aspect",instanceEventData)

#             aspect
# class        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   OCCURRENCE 3854         119        231                     14
#   STATE      1090           1         27                      0
#   I_STATE     537          16         31                      0
#   REPORTING   992           2         33                      1
#   ASPECTUAL   236           7         19                      0
#   PERCEPTION   38           4          6                      0
#   I_ACTION    568          41         68                      5

# [1] "Percentages:"
#             aspect
# class        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   OCCURRENCE 0.49        0.01       0.03                   0.00
#   STATE      0.14        0.00       0.00                   0.00
#   I_STATE    0.07        0.00       0.00                   0.00
#   REPORTING  0.12        0.00       0.00                   0.00
#   ASPECTUAL  0.03        0.00       0.00                   0.00
#   PERCEPTION 0.00        0.00       0.00                   0.00
#   I_ACTION   0.07        0.01       0.01                   0.00

# [1] "Row Percentages:"
#             aspect
# class          NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE  Total
#   OCCURRENCE  91.37        2.82       5.48                   0.33 100.00
#   STATE       97.50        0.09       2.42                   0.00 100.00
#   I_STATE     91.95        2.74       5.31                   0.00 100.00
#   REPORTING   96.50        0.19       3.21                   0.10 100.00
#   ASPECTUAL   90.08        2.67       7.25                   0.00 100.00
#   PERCEPTION  79.17        8.33      12.50                   0.00 100.00
#   I_ACTION    83.28        6.01       9.97                   0.73 100.00

# [1] "Column Percentages:"
#             aspect
# class          NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   OCCURRENCE  52.69       62.63       55.7                     70
#   STATE       14.90        0.53        6.5                      0
#   I_STATE      7.34        8.42        7.5                      0
#   REPORTING   13.56        1.05        8.0                      5
#   ASPECTUAL    3.23        3.68        4.6                      0
#   PERCEPTION   0.52        2.11        1.4                      0
#   I_ACTION     7.76       21.58       16.4                     25
#   Total      100.00      100.00      100.0                    100


twoFactorFreqPerc("tense","aspect",instanceEventData)

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST       2039          19         94                      1
#   PRESENT     946         163        289                     17
#   NONE       2764           3         24                      2
#   FUTURE      275           5          4                      0
#   INFINITIVE  781           0          1                      0
#   PRESPART    360           0          1                      0
#   PASTPART    150           0          2                      0

# [1] "Percentages:"
#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST       0.26        0.00       0.01                   0.00
#   PRESENT    0.12        0.02       0.04                   0.00
#   NONE       0.35        0.00       0.00                   0.00
#   FUTURE     0.03        0.00       0.00                   0.00
#   INFINITIVE 0.10        0.00       0.00                   0.00
#   PRESPART   0.05        0.00       0.00                   0.00
#   PASTPART   0.02        0.00       0.00                   0.00

# [1] "Row Percentages:"
#             aspect
# tense          NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE  Total
#   PAST        94.71        0.88       4.37                   0.05 100.00
#   PRESENT     66.86       11.52      20.42                   1.20 100.00
#   NONE        98.96        0.11       0.86                   0.07 100.00
#   FUTURE      96.83        1.76       1.41                   0.00 100.00
#   INFINITIVE  99.87        0.00       0.13                   0.00 100.00
#   PRESPART    99.72        0.00       0.28                   0.00 100.00
#   PASTPART    98.68        0.00       1.32                   0.00 100.00

# [1] "Column Percentages:"
#             aspect
# tense         NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST        27.9        10.0      22.65                      5
#   PRESENT     12.9        85.8      69.64                     85
#   NONE        37.8         1.6       5.78                     10
#   FUTURE       3.8         2.6       0.96                      0
#   INFINITIVE  10.7         0.0       0.24                      0
#   PRESPART     4.9         0.0       0.24                      0
#   PASTPART     2.0         0.0       0.48                      0
#   Total      100.0       100.0     100.00                    100


ftable(xtabs(~	tense	+	aspect	+	class,	data=instanceEventData))

# 	class	OCCURRENCE	STATE	I_STATE	REPORTING	ASPECTUAL	PERCEPTION	I_ACTION
# tense	aspect	

# PAST	
# 	NONE	833	82	86	761	68	6	203
# 	PROGRESSIVE	10	0	1	1	0	1	6
# 	PERFECTIVE	54	5	9	9	3	2	12
# 	PERFECTIVE_PROGRESSIVE	0	0	0	1	0	0	0

# PRESENT	
# 	NONE	265	201	264	121	36	11	48
# 	PROGRESSIVE	105	1	14	1	7	2	33
# 	PERFECTIVE	156	18	19	23	14	4	55
# 	PERFECTIVE_PROGRESSIVE	14	0	0	0	0	0	3

# NONE	
# 	NONE	1695	714	127	39	47	4	138
# 	PROGRESSIVE	1	0	1	0	0	1	0
# 	PERFECTIVE	16	3	3	0	2	0	0
# 	PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	2

# FUTURE	
# 	NONE	163	38	14	3	24	5	28
# 	PROGRESSIVE	3	0	0	0	0	0	2
# 	PERFECTIVE	2	0	0	1	0	0	1
# 	PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# INFINITIVE	
# 	NONE	574	30	21	19	41	9	87
# 	PROGRESSIVE	0	0	0	0	0	0	0
# 	PERFECTIVE	0	1	0	0	0	0	0
# 	PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# PRESPART	
# 	NONE	232	4	11	43	15	0	55
# 	PROGRESSIVE	0	0	0	0	0	0	0
# 	PERFECTIVE	1	0	0	0	0	0	0
# 	PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# PASTPART	
# 	NONE	92	21	14	6	5	3	9
# 	PROGRESSIVE	0	0	0	0	0	0	0
# 	PERFECTIVE	2	0	0	0	0	0	0
# 	PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0



ftable(xtabs(~	pos	+	tense	+	aspect	+	class,	data=instanceEventData))

# 	class	OCCURRENCE	STATE	I_STATE	REPORTING	ASPECTUAL	PERCEPTION	I_ACTION
# pos	tense	aspect	


# VERB	PAST	NONE	819	48	78	756	67	6	201
# 		PROGRESSIVE	10	0	1	1	0	1	6
# 		PERFECTIVE	52	1	9	9	3	2	12
# 		PERFECTIVE_PROGRESSIVE	0	0	0	1	0	0	0
		
# 	PRESENT	NONE	243	112	237	119	36	11	45
# 		PROGRESSIVE	104	1	14	1	7	2	33
# 		PERFECTIVE	152	5	17	23	14	4	55
# 		PERFECTIVE_PROGRESSIVE	14	0	0	0	0	0	3

# 	NONE	NONE	140	7	18	4	15	4	28
# 		PROGRESSIVE	1	0	1	0	0	1	0
# 		PERFECTIVE	15	1	2	0	2	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	2
		
# 	FUTURE	NONE	162	27	13	3	24	5	28
# 		PROGRESSIVE	3	0	0	0	0	0	2
# 		PERFECTIVE	2	0	0	1	0	0	1
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	INFINITIVE	NONE	570	17	20	19	41	9	86
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESPART	NONE	232	4	11	43	15	0	55
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	1	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	PASTPART	NONE	92	21	14	6	5	3	9
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	2	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# NOUN	PAST	NONE	8	4	1	2	0	0	1
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	2	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	PRESENT	NONE	12	11	4	2	0	0	2
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	3	3	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	NONE	NONE	1519	390	89	34	29	0	101
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	FUTURE	NONE	0	2	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	INFINITIVE	NONE	4	0	0	0	0	0	1
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	PRESPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	PASTPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# ADJECTIVE	PAST	NONE	5	16	7	3	0	0	1
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	PRESENT	NONE	8	50	23	0	0	0	0
# 		PROGRESSIVE	1	0	0	0	0	0	0
# 		PERFECTIVE	0	6	2	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	NONE	NONE	31	61	20	1	3	0	9
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	1	2	1	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	FUTURE	NONE	1	9	1	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
	
# 	INFINITIVE	NONE	0	1	1	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PASTPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# PREPOSITION

# 	PAST	NONE	0	3	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESENT	NONE	0	16	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	3	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	NONE
# 		NONE	0	5	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	FUTURE	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	INFINITIVE	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PASTPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# OTHER	PAST	NONE	1	11	0	0	1	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESENT	NONE	2	12	0	0	0	0	1
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	1	1	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	NONE
# 		NONE	5	251	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	FUTURE	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0

# 	INFINITIVE	NONE	0	12	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PRESPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0
		
# 	PASTPART	NONE	0	0	0	0	0	0	0
# 		PROGRESSIVE	0	0	0	0	0	0	0
# 		PERFECTIVE	0	0	0	0	0	0	0
# 		PERFECTIVE_PROGRESSIVE	0	0	0	0	0	0	0


