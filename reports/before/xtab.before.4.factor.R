# Before: TENSE.x + CLASS.x + ASPECT.x + POS.x


xtabs(~ tense.x + class.x + aspect.x + pos.x, data=beforeData)

# , , aspect.x = NONE, class.x = OCCURRENCE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           5       0    0      0          5        0        0
#   NOUN           0       0    5      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = OCCURRENCE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           4       1    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0


# , , aspect.x = NONE, class.x = STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       0    0      0          0        0        0
#   NOUN           0       0    1      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       1    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = NONE, class.x = REPORTING

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        1
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = NONE, class.x = ASPECTUAL

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       1    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = NONE, class.x = I_ACTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           1       0    0      0          0        0        0
#   NOUN           0       0    1      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PROGRESSIVE, class.x = I_ACTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       1    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0














# , , aspect.x = PROGRESSIVE, class.x = OCCURRENCE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = OCCURRENCE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0



# , , aspect.x = PROGRESSIVE, class.x = STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0


# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = NONE, class.x = I_STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PROGRESSIVE, class.x = I_STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = I_STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = I_STATE

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0



# , , aspect.x = PROGRESSIVE, class.x = REPORTING

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = REPORTING

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = REPORTING

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0



# , , aspect.x = PROGRESSIVE, class.x = ASPECTUAL

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = ASPECTUAL

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = ASPECTUAL

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = NONE, class.x = PERCEPTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PROGRESSIVE, class.x = PERCEPTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE, class.x = PERCEPTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = PERCEPTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0


# , , aspect.x = PERFECTIVE, class.x = I_ACTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

# , , aspect.x = PERFECTIVE_PROGRESSIVE, class.x = I_ACTION

#              tense.x
# pos.x         PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   VERB           0       0    0      0          0        0        0
#   NOUN           0       0    0      0          0        0        0
#   ADJECTIVE      0       0    0      0          0        0        0
#   PREPOSITION    0       0    0      0          0        0        0
#   OTHER          0       0    0      0          0        0        0

