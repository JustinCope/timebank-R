# Before event hosts and complements: TENSE + CLASS + ASPECT + POS

xtabs(~ tense.x + class.x + aspect.x + pos.x, data=beforeData)

# ##### pos.x = VERB #####

#   aspect.x = NONE

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#     * PAST               *5*   *1*      0         0        *1*         0       *1*
#       past-perf          *4*
#     * PRESENT             0     0       0         0        *1*         0        0
#       present-prog                                                             *1* 
#       present-perf       *1*  
#       NONE                0     0       0         0         0          0        0
#       FUTURE              0     0       0         0         0          0        0
#     * INFINITIVE         *5*    0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#     * PASTPART            0     0       0        *1*        0          0        0


# COMBINED WITH OTHER TABLES ^ (21 verbs in main clause)



#   aspect.x = PROGRESSIVE

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#       PAST                0     0       0         0         0          0        0
#     * PRESENT             0     0       0         0         0          0       *1*
#       NONE                0     0       0         0         0          0        0
#       FUTURE              0     0       0         0         0          0        0
#       INFINITIVE          0     0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#       PASTPART            0     0       0         0         0          0        0

#   aspect.x = PERFECTIVE

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#     * PAST               *4*    0       0         0         0          0        0
#     * PRESENT            *1*    0       0         0         0          0        0
#       NONE                0     0       0         0         0          0        0
#       FUTURE              0     0       0         0         0          0        0
#       INFINITIVE          0     0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#       PASTPART            0     0       0         0         0          0        0


#   aspect.x = PERFECTIVE_PROGRESSIVE

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#       PAST                0     0       0         0         0          0        0
#       PRESENT             0     0       0         0         0          0        0
#       NONE                0     0       0         0         0          0        0
#       FUTURE              0     0       0         0         0          0        0
#       INFINITIVE          0     0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#       PASTPART            0     0       0         0         0          0        0




# ##### pos.x = NOUN #####

#   aspect.x = NONE 

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#       PAST                0     0       0         0         0          0        0
#       PRESENT             0     0       0         0         0          0        0
#       present-perf              *1*
#     * NONE               *5*    *1*     0         0         0          0       *1*
#       FUTURE              0     0       0         0         0          0        0
#       INFINITIVE          0     0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#       PASTPART            0     0       0         0         0          0        0

# (8 noun hosts)

#   aspect.x = PROGRESSIVE

#                 class.x
#     tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#       PAST                0     0       0         0         0          0        0
#       PRESENT             0     0       0         0         0          0        0
#       NONE                0     0       0         0         0          0        0
#       FUTURE              0     0       0         0         0          0        0
#       INFINITIVE          0     0       0         0         0          0        0
#       PRESPART            0     0       0         0         0          0        0
#       PASTPART            0     0       0         0         0          0        0


#                           NOUN, PRESENT PERFECTIVE STATE
  
  

#   aspect.x = PERFECTIVE

#                   class.x
#       tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#         PAST                0     0       0         0         0          0        0
#       * PRESENT             0    *1*      0         0         0          0        0
#         NONE                0     0       0         0         0          0        0
#         FUTURE              0     0       0         0         0          0        0
#         INFINITIVE          0     0       0         0         0          0        0
#         PRESPART            0     0       0         0         0          0        0
#         PASTPART            0     0       0         0         0          0        0



#     aspect.x = PERFECTIVE_PROGRESSIVE

#             class.x
#         tense.x      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   PAST                0     0       0         0         0          0        0
#   PRESENT             0     0       0         0         0          0        0
#   NONE                0     0       0         0         0          0        0
#   FUTURE              0     0       0         0         0          0        0
#   INFINITIVE          0     0       0         0         0          0        0
#   PRESPART            0     0       0         0         0          0        0
#   PASTPART            0     0       0         0         0          0        0



# ###############################################################################



# 20 main clause "occurrences" 
#    15 verbs
#       9 past
#       1 present
#       5 infinitive

#    5 nouns


# 3 main clause "states"
#    1 verb
#       1 past - NO aspect
#    2 nouns
#       1 present - perfective
#       1 NO tense, NO aspect


# 1 main clause "reporting" 
#    1 verb 
#       1 pastpart - NO aspect


# 2 "aspectual"
#    2 verbs
#       1 past - NO aspect
#       1 present - NO aspect


# 3 "i-action"
#    2 verbs
#       1 past - NO aspect
#       1 present, progressive
#    1 noun - NO tense, NO aspect


# *****************#########################################################


beforeOccurrence

    # Noun 

    # relatedToTime relatedToEventInstance eventInstanceID lid relType
    # 3 d119t338 <NA> d119ei2072 d119l106 ENDS
    # 5 d159t151 <NA> d159ei2019 d159l76 BEGINS
    # 7 <NA> d1ei386 d1ei387 d1l10 BEFORE
    # 27 <NA> d159ei2020 d159ei2019 d159l23 BEFORE
    # 29 <NA> d164ei857 d164ei856 d164l57 BEFORE

    #  signalID origin eventID.x tense.x aspect.x polarity.x pos.x modality.x
    # 3 d119s206 <NA> d119e205 NONE NONE POS NOUN <NA>
    # 5 d159s154 <NA> d159e40 NONE NONE POS NOUN <NA>
    # 7 d1s13 <NA> d1e14 NONE NONE POS NOUN <NA>
    # 27 d159s154 <NA> d159e40 NONE NONE POS NOUN <NA>
    # 29 d164s152 <NA> d164e222 NONE NONE POS NOUN <NA>

    #  cardinality.x class.x word_form.x stem.x eventID.y tense.y aspect.y
    # 3 <NA> OCCURRENCE plunge <NA> <NA> <NA> <NA>
    # 5 <NA> OCCURRENCE interview <NA> <NA> <NA> <NA>
    # 7 <NA> OCCURRENCE news <NA> d1e12 NONE NONE
    # 27 <NA> OCCURRENCE interview <NA> d159e42 PAST NONE
    # 29 <NA> OCCURRENCE offer <NA> d164e153 PRESENT NONE

    #  polarity.y pos.y modality.y cardinality.y class.y word_form.y stem.y
    # 3 <NA> <NA> <NA> <NA> <NA> <NA> <NA>
    # 5 <NA> <NA> <NA> <NA> <NA> <NA> <NA>
    # 7 POS NOUN <NA> <NA> OCCURRENCE takeover <NA>
    # 27 POS VERB <NA> <NA> ASPECTUAL entered <NA>
    # 29 POS VERB <NA> <NA> ASPECTUAL begins <NA>

    #  type value temporalFunction functionInDocument word_form
    # 3 DATE 1989-10-12 true NONE the day
    # 5 DURATION PXM true NONE several months
    # 7 <NA> <NA> <NA> <NA> <NA>
    # 27 <NA> <NA> <NA> <NA> <NA>
    # 29 <NA> <NA> <NA> <NA> <NA>

    #  anchorTimeID mod quant freq endPoint beginPoint
    # 3 d119t335 <NA> <NA> <NA> <NA> <NA>
    # 5 <NA> <NA> <NA> <NA> d159t153 <NA>
    # 7 <NA> <NA> <NA> <NA> <NA> <NA>
    # 27 <NA> <NA> <NA> <NA> <NA> <NA>
    # 29 <NA> <NA> <NA> <NA> <NA> <NA>




  beforeStateLinks = c("d4l3","d112l29", "d134l7")


############################################################################################


# "EVENT COMPLEMENTS"

xtabs(~ tense.y + class.y + aspect.y + pos.y, data=beforeData)

#   NO ASPECT EVER

#     pos.y = VERB

#                   class.y
#       tense.y      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#         PAST **            *3*    0       0         0        *1*         0        0
#         PRESENT **         *1*    0       0         0        *1*         0        0
#         NONE                0     0       0         0         0          0        0
#         FUTURE              0     0       0         0         0          0        0
#         INFINITIVE **      *1*    0       0         0         0          0        0
#         PRESPART **        *3*    0       0         0         0          0       *1*
#         PASTPART            0     0       0         0         0          0        0



#     pos.y = NOUN

#                   class.y
#       tense.y      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#         PAST                0     0       0         0         0          0        0
#         PRESENT             0     0       0         0         0          0        0
#       * NONE              *10*    0       0         0         0          0       *1*
#         FUTURE              0     0       0         0         0          0        0
#         INFINITIVE          0     0       0         0         0          0        0
#         PRESPART            0     0       0         0         0          0        0
#         PASTPART            0     0       0         0         0          0        0



#     pos.y = ADJECTIVE

#                   class.y

#       tense.y      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#       * PAST                0    *1*      0         0         0          0        0
#         PRESENT             0     0       0         0         0          0        0
#         NONE                0     0       0         0         0          0        0
#         FUTURE              0     0       0         0         0          0        0
#         INFINITIVE          0     0       0         0         0          0        0
#         PRESPART            0     0       0         0         0          0        0
#         PASTPART            0     0       0         0         0          0        0




# d4s4  d112s98  d134s18


# "Colonel Collins has been the co-pilot before, but this time she's the boss."

# > ToSentence(SIDtoSignal("d4s4",docs))
# <s>
# <ENAMEX TYPE="PERSON">
#   Colonel Collins
# </ENAMEX> 
#   has been the 
# <EVENT eid="d4e40" class="STATE" word_form="co-pilot">
#   co-pilot
# </EVENT> 
# <SIGNAL sid="d4s4" word_form="before">
#   before
# </SIGNAL>, 
#   but 
# <TIMEX3 tid="d4t111" type="DATE" value="PRESENT_REF" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d4t35" word_form="this time">
#   this time
# </TIMEX3> 
#   she's the 
# <EVENT eid="d4e41" class="STATE" word_form="boss">
#   boss
# </EVENT>.
# </s> 

# > SIDtoTLINKS(tlinkWithSignals,"d4s4")
# <TLINK lid="d4l3" relType="BEFORE" eventInstanceID="d4ei263" relatedToTime="d4t35" signalID="d4s4"/> 



# RJR Nabisco Inc.said it agreed to sell its Baby Ruth, Butterfinger and Pearson candy businesses to Nestle S.A.'s Nestle Foods unit for $370 million. | The sale, at a higher price than some analysts had expected, helps the food and tobacco giant raise funds to pay debt and boosts Nestle's 7% share of the U.S. candy market to about 12%.

# "Nestle's share of 7% before Friday's purchases is far below the shares of market leaders Hershey Foods Corp. and Mars Inc., which have about 40% and 36% of the market, respectively."

# > SIDtoTLINKS(tlinkWithSignals,"d112s98")
# <TLINK lid="d112l29" relType="BEFORE" eventInstanceID="d112ei2023" relatedToEventInstance="d112ei2024" signalID="d112s98"/> 
# > ToSentence(SIDtoSignal("d112s98",docs))
# <s>
#   <ENAMEX TYPE="ORGANIZATION">
#     Nestle
#   </ENAMEX>
#     's 
# <EVENT eid="d112e96" class="STATE" word_form="share">
#   share
# </EVENT> 
#   of 
#   <NUMEX TYPE="PERCENT">
#     7%
#   </NUMEX> 
# <SIGNAL sid="d112s98" word_form="before">
#   before
# </SIGNAL> 
# <TIMEX3 tid="d112t99" type="DATE" value="1989-10-27" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d112t78" word_form="friday">
#   Friday
# </TIMEX3>
#   's 
# <EVENT eid="d112e52" class="OCCURRENCE" word_form="purchases">
#   purchases
# </EVENT> 
#   is far below the shares of market leaders <ENAMEX TYPE="ORGANIZATION">Hershey Foods Corp.</ENAMEX> and <ENAMEX TYPE="ORGANIZATION">Mars Inc.</ENAMEX>, which have about <NUMEX TYPE="PERCENT">40%</NUMEX> and <NUMEX TYPE="PERCENT">36%</NUMEX> of the market, respectively.</s> 



# "Giant Group owned 22% of Rally's shares before the initial public offering."

# > SIDtoTLINKS(tlinkWithSignals,"d134s18")

# <TLINK lid="d134l7" relType="BEFORE" eventInstanceID="d134ei156" relatedToEventInstance="d134ei157" signalID="d134s18" origin="USER"/> 

# > ToSentence(SIDtoSignal("d134s18",docs))
# <s>
# <ENAMEX TYPE="ORGANIZATION">Giant Group</ENAMEX>
# <EVENT eid="d134e16" class="STATE" stem="own" word_form="owned">
#   owned
# </EVENT>
# <NUMEX TYPE="PERCENT">22%</NUMEX> of <ENAMEX TYPE="ORGANIZATION">Rally's</ENAMEX> shares 
# <SIGNAL sid="d134s18" word_form="before">
#   before
# </SIGNAL> 
#   the initial public 
# <EVENT eid="d134e17" class="OCCURRENCE" stem="offer" word_form="offering">
#   offering
# </EVENT>.
# </s> 

