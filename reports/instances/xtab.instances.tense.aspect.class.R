# Instances: TENSE + ASPECT + CLASS


xtabs(~ tense + aspect + class, data=instanceEventData)

# , , class = OCCURRENCE

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST        833          10         54                      0
#   PRESENT     265         105        156                     14
#   NONE       1695           1         16                      0
#   FUTURE      163           3          2                      0
#   INFINITIVE  574           0          0                      0
#   PRESPART    232           0          1                      0
#   PASTPART     92           0          2                      0

# , , class = STATE

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST         82           0          5                      0
#   PRESENT     201           1         18                      0
#   NONE        714           0          3                      0
#   FUTURE       38           0          0                      0
#   INFINITIVE   30           0          1                      0
#   PRESPART      4           0          0                      0
#   PASTPART     21           0          0                      0

# , , class = I_STATE

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST         86           1          9                      0
#   PRESENT     264          14         19                      0
#   NONE        127           1          3                      0
#   FUTURE       14           0          0                      0
#   INFINITIVE   21           0          0                      0
#   PRESPART     11           0          0                      0
#   PASTPART     14           0          0                      0

# , , class = REPORTING

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST        761           1          9                      1
#   PRESENT     121           1         23                      0
#   NONE         39           0          0                      0
#   FUTURE        3           0          1                      0
#   INFINITIVE   19           0          0                      0
#   PRESPART     43           0          0                      0
#   PASTPART      6           0          0                      0

# , , class = ASPECTUAL

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST         68           0          3                      0
#   PRESENT      36           7         14                      0
#   NONE         47           0          2                      0
#   FUTURE       24           0          0                      0
#   INFINITIVE   41           0          0                      0
#   PRESPART     15           0          0                      0
#   PASTPART      5           0          0                      0

# , , class = PERCEPTION

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST          6           1          2                      0
#   PRESENT      11           2          4                      0
#   NONE          4           1          0                      0
#   FUTURE        5           0          0                      0
#   INFINITIVE    9           0          0                      0
#   PRESPART      0           0          0                      0
#   PASTPART      3           0          0                      0

# , , class = I_ACTION

#             aspect
# tense        NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
#   PAST        203           6         12                      0
#   PRESENT      48          33         55                      3
#   NONE        138           0          0                      2
#   FUTURE       28           2          1                      0
#   INFINITIVE   87           0          0                      0
#   PRESPART     55           0          0                      0
#   PASTPART      9           0          0                      0


