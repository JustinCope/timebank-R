# 2 factor cross tabulations



# pos * class (also percentages are given)
# pos * tense
# pos * aspect
# class * aspect

# ??? class*tense, tense*aspect ???


xtabs(~ pos + class, data=instanceEventData)

#              class
# pos           OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB              2614   244     435       986       229         48      566
#   NOUN              1548   411      94        38        29          0      105
#   ADJECTIVE           47   147      55         4         3          0       10
#   PREPOSITION          0    28       0         0         0          0        0
#   OTHER                9   288       0         0         1          0        1


rowPerc(posClassTable)

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


xtabs(~ pos + tense, data=instanceEventData)

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB        2083    1252  241    271        762      361      152
#   NOUN          19      37 2162      2          5        0        0
#   ADJECTIVE     33      90  129     11          3        0        0
#   PREPOSITION    4      19    5      0          0        0        0
#   OTHER         14      17  256      0         12        0        0




xtabs(~ pos + aspect, data=instanceEventData)

#              aspect
# pos           NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   VERB        4528         189        385                     20
#   NOUN        2216           0          9                      0
#   ADJECTIVE    251           1         14                      0
#   PREPOSITION   24           0          4                      0
#   OTHER        296           0          3                      0




xtabs(~ class + tense, data=instanceEventData)

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE  897     540 1712    168        574      233       94
#   STATE        87     220  717     38         31        4       21
#   I_STATE      96     297  131     14         21       11       14
#   REPORTING   772     145   39      4         19       43        6
#   ASPECTUAL    71      57   49     24         41       15        5
#   PERCEPTION    9      17    5      5          9        0        3
#   I_ACTION    221     139  140     31         87       55        9


xtabs(~ class + aspect, data=instanceEventData)

#             aspect
# class        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   OCCURRENCE 3854         119        231                     14
#   STATE      1090           1         27                      0
#   I_STATE     537          16         31                      0
#   REPORTING   992           2         33                      1
#   ASPECTUAL   236           7         19                      0
#   PERCEPTION   38           4          6                      0
#   I_ACTION    568          41         68                      5


xtabs(~ tense + aspect, data=instanceEventData)

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST       2039          19         94                      1
#   PRESENT     946         163        289                     17
#   NONE       2764           3         24                      2
#   FUTURE      275           5          4                      0
#   INFINITIVE  781           0          1                      0
#   PRESPART    360           0          1                      0
#   PASTPART    150           0          2                      0


