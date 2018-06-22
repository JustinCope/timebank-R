


xtabs(~ class.3 + class.4, data=test)
xtabs(~ tense.3 + tense.4, data=test)
xtabs(~ aspect.3 + aspect.4, data=test)
xtabs(~ tense.3 + aspect.3, data=test)
xtabs(~ tense.3 + aspect.3 + tense.4, data=test)


