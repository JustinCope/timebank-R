# Instances: CLASS x TENSE x POS

xtabs(~ class + tense + pos, data=instanceEventData)
# , , pos = VERB

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE  881     513  156    167        570      233       94
#   STATE        49     118    8     27         17        4       21
#   I_STATE      88     268   21     13         20       11       14
#   REPORTING   767     143    4      4         19       43        6
#   ASPECTUAL    70      57   17     24         41       15        5
#   PERCEPTION    9      17    5      5          9        0        3
#   I_ACTION    219     136   30     31         86       55        9

# , , pos = NOUN

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE   10      15 1519      0          4        0        0
#   STATE         5      14  390      2          0        0        0
#   I_STATE       1       4   89      0          0        0        0
#   REPORTING     2       2   34      0          0        0        0
#   ASPECTUAL     0       0   29      0          0        0        0
#   PERCEPTION    0       0    0      0          0        0        0
#   I_ACTION      1       2  101      0          1        0        0




# , , pos = ADJECTIVE

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE    5       9   32      1          0        0        0
#   STATE        17      56   63      9          2        0        0
#   I_STATE       7      25   21      1          1        0        0
#   REPORTING     3       0    1      0          0        0        0
#   ASPECTUAL     0       0    3      0          0        0        0
#   PERCEPTION    0       0    0      0          0        0        0
#   I_ACTION      1       0    9      0          0        0        0

# , , pos = PREPOSITION

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE    0       0    0      0          0        0        0
#   STATE         4      19    5      0          0        0        0
#   I_STATE       0       0    0      0          0        0        0
#   REPORTING     0       0    0      0          0        0        0
#   ASPECTUAL     0       0    0      0          0        0        0
#   PERCEPTION    0       0    0      0          0        0        0
#   I_ACTION      0       0    0      0          0        0        0

# , , pos = OTHER

#             tense
# class        PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   OCCURRENCE    1       3    5      0          0        0        0
#   STATE        12      13  251      0         12        0        0
#   I_STATE       0       0    0      0          0        0        0
#   REPORTING     0       0    0      0          0        0        0
#   ASPECTUAL     1       0    0      0          0        0        0
#   PERCEPTION    0       0    0      0          0        0        0
#   I_ACTION      0       1    0      0          0        0        0