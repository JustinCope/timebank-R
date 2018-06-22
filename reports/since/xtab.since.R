# xtab.since.R

> xtabs(~ pos.e_host + pos.e_comp, data=sinceData)
             pos.e_comp
pos.e_host    VERB NOUN ADJECTIVE PREPOSITION OTHER
  VERB           8    2         0           0     0
  NOUN           0    1         0           0     0
  ADJECTIVE      0    0         0           0     0
  PREPOSITION    0    0         0           0     0
  OTHER          0    0         0           0     0


> xtabs(~ pos.e_host + type.t_comp, data=sinceData)
             type.t_comp
pos.e_host    DATE DURATION TIME SET
  VERB           5        0    0   0
  NOUN           2        0    0   0
  ADJECTIVE      0        0    0   0
  PREPOSITION    0        0    0   0
  OTHER          0        0    0   0




# \begin{table}[p]
# \begin{center}
# \begin{tabular}{lcccc}
# 		\toprule
# 		\textsc{host}\hspace{1cm} & \multicolumn{3}{c}{\textsc{complement}} & \textsc{total}\\
# 		\midrule
# 			& \multicolumn{2}{c}{\event{}} & \timexxx{} & \\
# 		\midrule
# 			&	verb & noun & date & \\
# 		\midrule
# 		verb & 7 & 2 & 5 & 14 \\
# 		noun & 0 & 1 & 3 & 4 \\
# 		\midrule
# 		\textsc{total} & 7 & 3 & 8 & 18 \\
# 		\bottomrule
# \end{tabular}
# \end{center}
# \caption{Cross tabulation of host and complement by part-of-speech/\timexxx{} type for \since{}\label{table:since.pos.class}}
# \end{table}







test = (subset(sinceData, sinceData$pos.3=="VERB" & sinceData$pos.4=="VERB"))



xtabs(~ class.3 + class.4, data=test)

            class.4
class.3      OCCURRENCE ASPECTUAL  I_ACTION
  OCCURRENCE          3  1           0
  I_STATE             1  0           0
  ASPECTUAL           1  0           1



> xtabs(~ tense.3 + tense.4, data=test)

            tense.4
tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
  PAST          1       0    0      0          0        0        0
  PRESENT       6       0    0      0          0        0        0
  NONE          0       0    0      0          0        0        0
  FUTURE        0       0    0      0          0        0        0
  INFINITIVE    0       0    0      0          0        0        0
  PRESPART      0       0    0      0          0        0        0
  PASTPART      0       0    0      0          0        0        0
> xtabs(~ aspect.3 + aspect.4, data=test)
                        aspect.4
aspect.3                 NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  NONE                      1           0          0                      0
  PROGRESSIVE               0           0          0                      0
  PERFECTIVE                6           0          0                      0
  PERFECTIVE_PROGRESSIVE    0           0          0                      0
> xtabs(~ tense.3 + aspect.3, data=test)
            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          1           0          0                      0
  PRESENT       0           0          6                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0
> xtabs(~ tense.3 + aspect.3 + tense.4, data=test)
, , tense.4 = PAST

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          1           0          0                      0
  PRESENT       0           0          6                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = PRESENT

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = NONE

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = FUTURE

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = INFINITIVE

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = PRESPART

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0

, , tense.4 = PASTPART

            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          0           0          0                      0
  PRESENT       0           0          0                      0
  NONE          0           0          0                      0
  FUTURE        0           0          0                      0
  INFINITIVE    0           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0








  test = subset(sinceData, (sinceData$pos.3=="VERB" | sinceData$pos.3=="NOUN") & 
	(sinceData$pos.4=="VERB" | sinceData$pos.4=="NOUN"))




  > xtabs(~ class.3 + class.4, data=test)
            class.4
class.3      OCCURRENCE   ASPECTUAL		 I_ACTION
  OCCURRENCE          6         1             0
  I_STATE             1         0             0
  ASPECTUAL           1         0             1



> xtabs(~ tense.3 + tense.4, data=test)
            tense.4
tense.3      PAST  NONE 
  PAST          1     0    
  PRESENT       6     2    
  NONE          0     1     



> xtabs(~ aspect.3 + aspect.4, data=test)
                        aspect.4
aspect.3                 NONE 
  NONE                      2 
  PERFECTIVE                8 




> xtabs(~ tense.3 + aspect.3, data=test)

            aspect.3
tense.3      NONE  		PERFECTIVE 
  PAST          1            0              
  PRESENT       0            8            
  NONE          1            0   




> xtabs(~ tense.3 + aspect.3 + tense.4, data=test)


, , tense.4 = PAST

            aspect.3
tense.3      NONE   PERFECTIVE      
  PAST          1     0
  PRESENT       0     6


, , tense.4 = NONE

            aspect.3
tense.3      NONE      PERFECTIVE      
  PRESENT       0     2
  NONE          1     0


composite:

  				PAST 	NONE
PAST 			1		0
PRESENTPERF		6		2
NONE-NONE		0		1	




