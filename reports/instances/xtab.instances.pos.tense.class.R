Instances: POS x TENSE x CLASS


xtabs(~ pos + tense + class, data=instanceEventData)
, , class = OCCURRENCE

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB         881     513  156    167        570      233       94
  NOUN          10      15 1519      0          4        0        0
  ADJECTIVE      5       9   32      1          0        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          1       3    5      0          0        0        0

, , class = STATE

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB          49     118    8     27         17        4       21
  NOUN           5      14  390      2          0        0        0
  ADJECTIVE     17      56   63      9          2        0        0
  PREPOSITION    4      19    5      0          0        0        0
  OTHER         12      13  251      0         12        0        0

, , class = I_STATE

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB          88     268   21     13         20       11       14
  NOUN           1       4   89      0          0        0        0
  ADJECTIVE      7      25   21      1          1        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          0       0    0      0          0        0        0

, , class = REPORTING

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB         767     143    4      4         19       43        6
  NOUN           2       2   34      0          0        0        0
  ADJECTIVE      3       0    1      0          0        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          0       0    0      0          0        0        0

, , class = ASPECTUAL

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB          70      57   17     24         41       15        5
  NOUN           0       0   29      0          0        0        0
  ADJECTIVE      0       0    3      0          0        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          1       0    0      0          0        0        0

, , class = PERCEPTION

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB           9      17    5      5          9        0        3
  NOUN           0       0    0      0          0        0        0
  ADJECTIVE      0       0    0      0          0        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          0       0    0      0          0        0        0

, , class = I_ACTION

             tense
pos           PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  VERB         219     136   30     31         86       55        9
  NOUN           1       2  101      0          1        0        0
  ADJECTIVE      1       0    9      0          0        0        0
  PREPOSITION    0       0    0      0          0        0        0
  OTHER          0       1    0      0          0        0        0