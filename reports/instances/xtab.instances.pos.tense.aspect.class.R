# Instances: POS + TENSE + ASPECT + CLASS

xtabs(~ pos + tense + aspect + class, data=instanceEventData)

# , , aspect = NONE, class = OCCURRENCE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB         819     243  140    162        570      232       92
#   NOUN           8      12 1519      0          4        0        0
#   ADJECTIVE      5       8   31      1          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          1       2    5      0          0        0        0

# , , aspect = PROGRESSIVE, class = OCCURRENCE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          10     104    1      3          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       1    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = OCCURRENCE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          52     152   15      2          0        1        2
#   NOUN           2       3    0      0          0        0        0
#   ADJECTIVE      0       0    1      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       1    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = OCCURRENCE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0      14    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          48     112    7     27         17        4       21
#   NOUN           4      11  390      2          0        0        0
#   ADJECTIVE     16      50   61      9          1        0        0
#   PREPOSITION    3      16    5      0          0        0        0
#   OTHER         11      12  251      0         12        0        0

# , , aspect = PROGRESSIVE, class = STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       1    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       5    1      0          0        0        0
#   NOUN           1       3    0      0          0        0        0
#   ADJECTIVE      1       6    2      0          1        0        0
#   PREPOSITION    1       3    0      0          0        0        0
#   OTHER          1       1    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = I_STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          78     237   18     13         20       11       14
#   NOUN           1       4   89      0          0        0        0
#   ADJECTIVE      7      23   20      1          1        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PROGRESSIVE, class = I_STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1      14    1      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = I_STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           9      17    2      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       2    1      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = I_STATE

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = REPORTING

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB         756     119    4      3         19       43        6
#   NOUN           2       2   34      0          0        0        0
#   ADJECTIVE      3       0    1      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PROGRESSIVE, class = REPORTING

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       1    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = REPORTING

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           9      23    0      1          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = REPORTING

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = ASPECTUAL

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          67      36   15     24         41       15        5
#   NOUN           0       0   29      0          0        0        0
#   ADJECTIVE      0       0    3      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          1       0    0      0          0        0        0

# , , aspect = PROGRESSIVE, class = ASPECTUAL

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       7    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = ASPECTUAL

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           3      14    2      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = ASPECTUAL

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = PERCEPTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           6      11    4      5          9        0        3
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PROGRESSIVE, class = PERCEPTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       2    1      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = PERCEPTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           2       4    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = PERCEPTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = NONE, class = I_ACTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB         201      45   28     28         86       55        9
#   NOUN           1       2  101      0          1        0        0
#   ADJECTIVE      1       0    9      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       1    0      0          0        0        0

# , , aspect = PROGRESSIVE, class = I_ACTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           6      33    0      2          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE, class = I_ACTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB          12      55    0      1          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect = PERFECTIVE_PROGRESSIVE, class = I_ACTION

#              tense
# pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       3    2      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0