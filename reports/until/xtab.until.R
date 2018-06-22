xtab.until.R


xtabs(~ pos.e_host + pos.e_comp, data=untilData)
             pos.e_comp
pos.e_host    VERB NOUN ADJECTIVE PREPOSITION OTHER
  VERB          12    2         0           0     0
  NOUN           0    0         0           0     0
  ADJECTIVE      0    0         0           0     0
  PREPOSITION    0    0         0           0     0
  OTHER          0    0         0           0     0
  OTHER          0    0         0           0     0


xtabs(~ pos.e_host + type.t_comp, data=untilData)

             type.t_comp
pos.e_host         DATE DURATION TIME SET
  VERB           7        0    1   0
  NOUN           1        0    0   0
  ADJECTIVE      0        0    0   0
  PREPOSITION    0        0    0   0
  OTHER          0        0    0   0


xtabs(~ type.t_host + pos.e_comp, data=untilData)

          pos.e_comp
typ.t_host     VERB NOUN ADJECTIVE PREPOSITION OTHER
  DATE        0    1         1           0     0
  DURATION    0    0         0           0     0
  TIME        0    0         0           0     0
  SET         0    0         0           0     0


xtabs(~ type.t_host + type.t_comp, data=untilData)

          type.t_cost
type.t_host     DATE DURATION TIME SET
  DATE        0        0    0   0
  DURATION    0        0    0   0
  TIME        0        0    0   0
  SET         0        0    0   0




composite	

        	VERB 	NOUN	ADJECTIVE 	DATE	TIME
  VERB       	14 		2     	0  			7		1
  NOUN          0  		0     	0 			1		0
  DATE        	0  		1     	1 			0		0 



\begin{table}[p]
\begin{center}
\begin{tabular}{lcccccc}
		\toprule
		\textsc{host}\hspace{1cm} & \multicolumn{5}{c}{\textsc{complement}} & \textsc{total}\\
		\midrule
			& \multicolumn{3}{c}{\event{}} & \multicolumn{2}{c}{\timexxx{}} & \\
		\midrule
			&	verb & noun & adjective & date & time &  \\
		\midrule
		verb & 14 & 2 & 0 & 7 & 1 & 24 \\
		noun & 0 & 0 & 0 & 1 & 0 & 1 \\
		date & 0 & 1 & 1 & 0 & 0 & 2 \\
		\midrule
		\textsc{total} & 14 & 3 & 1 & 8 & 1 & 27 \\
		\bottomrule
\end{tabular}
\end{center}
\caption{Cross tabulation of host and complement by part-of-speech/\timexxx{} type for \until{}\label{table:until.pos.class}}
\end{table}



  test = subset(untilData, (untilData$pos.3=="VERB" | untilData$pos.3=="NOUN") & 
	(untilData$pos.4=="VERB" | untilData$pos.4=="NOUN" | untilData$pos.4=="ADJECTIVE"))




`




> xtabs(~ tense.3 + tense.4, data=test)
            tense.4
tense.3      PAST PRESENT NONE FUTURE 
  PAST          1       0    0      0  
  NONE          0       1    0      0    
  FUTURE        0       5    1      1
  INFINITIVE    0       6    1      0


> xtabs(~ aspect.3 + aspect.4, data=test)
                        aspect.4
aspect.3                 NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  NONE                     15           0          1                      0




> xtabs(~ tense.3 + aspect.3, data=test)
            aspect.3
tense.3      NONE PROGRESSIVE PERFECTIVE PERFECTIVE_PROGRESSIVE
  PAST          1           0          0                      0
  PRESENT       0           0          0                      0
  NONE          1           0          0                      0
  FUTURE        7           0          0                      0
  INFINITIVE    7           0          0                      0
  PRESPART      0           0          0                      0
  PASTPART      0           0          0                      0










> xtabs(~ tense.3 + aspect.3 + tense.4, data=test)
, , tense.4 = PAST

            aspect.3
tense.3      NONE   
  PAST          1    



, , tense.4 = PRESENT

            aspect.3
tense.3      NONE   
  NONE          1    
  FUTURE        5  
  INFINITIVE    6  



, , tense.4 = FUTURE

            aspect.3
tense.3      NONE   
  FUTURE        1    


, , tense.4 = NONE

            aspect.3
tense.3      NONE   
  FUTURE        1 
  INFINITIVE    1 



Composite:

  				PAST 	PRESENT		FUTURE		NONE
PAST 			1 		0			0			0
FUTURE 			0		5			1 			1
INFINITIVE 		0		6 			0 			1
NONE 			0		1			0			0








