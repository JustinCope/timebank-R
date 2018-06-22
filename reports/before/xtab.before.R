# BEFORE-TABLES

## Verb * Verb

test = (subset(beforeData, beforeData$pos.x=="VERB" & beforeData$pos.y=="VERB"))

xtabs(~ class.x + class.y, data=test)
#             class.y
# class.x      OCCURRENCE  I_ACTION
#   OCCURRENCE          7         0
#   I_ACTION            1         1


xtabs(~ tense.x + tense.y, data=test)

#             tense.y
# tense.x      PAST PRESENT INFINITIVE PRESPART PASTPART
#   PAST          3       0       1        2        0
#   PRESENT       0       0       0        1        0
#   INFINITIVE    0       1    	  0        1        0

xtabs(~ aspect.x + aspect.y, data=test)

#                         aspect.y
# aspect.x                 NONE 
#   NONE                      6           
#   PROGRESSIVE               1           
#   PERFECTIVE                2   



xtabs(~ tense.x + aspect.x, data=test)

#             aspect.x
# tense.x      NONE PROGRESSIVE PERFECTIVE 
#   PAST          4           0          2                      
#   PRESENT       0           1          0                      
#   INFINITIVE    2           0          0  

xtabs(~ tense.x + aspect.x+tense.y, data=test)

# , , tense.y = PAST
#             aspect.x
# tense.x      NONE PERFECTIVE 
#   PAST          2      1      


# , , tense.y = PRESENT

#             aspect.x
# tense.x      NONE 
#   INFINITIVE    1     


#  , , tense.y = INFINITIVE

#             aspect.x
# tense.x      NONE  PERFECTIVE 
#   PAST          0          1         


# , , tense.y = PRESPART

#             aspect.x
# tense.x      NONE PROGRESSIVE 
#   PAST          2           0          
#   PRESENT       0           1          
#   INFINITIVE    1           0         


## Verb * Noun

test = beforeData[beforeData$pos.x=="VERB"&beforeData$pos.y=="NOUN",]

xtabs(~ tense.x + aspect.x, data=test)

#             aspect.x
# tense.x      NONE  PERFECTIVE 
#   PAST          2           1                      
#   PRESENT       1           0                      
#   INFINITIVE    3           0                      
#   PASTPART      1           0      


xtabs(~ tense.x + aspect.x + class.x + class.y, data=test)

# , , class.x = OCCURRENCE, class.y = OCCURRENCE

#             aspect.x
# tense.x      NONE PERFECTIVE 
#   PAST          1      1                    
#   INFINITIVE    3      0           


# , , class.x = STATE, class.y = OCCURRENCE

#             aspect.x
# tense.x      NONE 
#   PAST          1      
             
                         
# , , class.x = REPORTING, class.y = OCCURRENCE

#             aspect.x
# tense.x      NONE 
#   PASTPART      1 


# , , class.x = ASPECTUAL, class.y = OCCURRENCE

#             aspect.x
# tense.x      NONE 
#   PRESENT       1



xtabs(~ pos.x + pos.y, data=beforeData)
#              pos.y
# pos.x         VERB NOUN ADJECTIVE PREPOSITION OTHER
#   VERB           9    8         1           0     0
#   NOUN           2    3         0           0     0
#   ADJECTIVE      0    0         0           0     0
#   PREPOSITION    0    0         0           0     0
#   OTHER          0    0         0           0     0
