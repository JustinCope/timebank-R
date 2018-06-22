# Getting Subframes of Instances


# instanceEventFrame and subframes

instancesCopy = getNodeSet(docsCopy,"//MAKEINSTANCE")
makeInstDataCopy = makeDataFrame(instancesCopy)
InstEventDataCopy = makeDataFrame(getNodeSet(docsCopy,"//EVENT"))
instanceEventData = merge(makeInstDataCopy, InstEventDataCopy, by.x="eventID", by.y="eid", all=TRUE)

	xtabs(~ pos + class, data=instanceEventData)

#              class
# pos           OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB              2614   244     435       986       229         48      566
#   NOUN              1548   411      94        38        29          0      105
#   ADJECTIVE           47   147      55         4         3          0       10
#   PREPOSITION          0    28       0         0         0          0        0
#   OTHER                9   288       0         0         1          0        1


subFrame2 = function(POS,CLS){
	return(instanceEventData[instanceEventData$pos==POS & instanceEventData$tense==CLS,])
}


sink("pos.class.frequency.txt")

verbOccurrence = subFrame2('VERB','OCCURRENCE')
verbState = subFrame2('VERB','STATE')
verbIState = subFrame2('VERB','I_STATE')
verbReporting = subFrame2('VERB','REPORTING')
verbPerception = subFrame2('VERB','PERCEPTION')
verbAspectual = subFrame2('VERB','ASPECTUAL')
verbIAction = subFrame2('VERB','I_ACTION')

nounOccurrence=subFrame2('NOUN','OCCURRENCE')
nounState=subFrame2('NOUN','STATE')
nounIState=subFrame2('NOUN','I_STATE')
nounReporting=subFrame2('NOUN','REPORTING')
nounPerception=subFrame2('NOUN','PERCEPTION')
nounAspectual=subFrame2('NOUN','ASPECTUAL')
nounIAction=subFrame2('NOUN','I_ACTION')

adjectiveOccurrence=subFrame2('ADJECTIVE','OCCURRENCE')
adjectiveState=subFrame2('ADJECTIVE','STATE')
adjectiveIState=subFrame2('ADJECTIVE','I_STATE')
adjectiveReporting=subFrame2('ADJECTIVE','REPORTING')
adjectivePerception=subFrame2('ADJECTIVE','PERCEPTION')
adjectiveAspectual=subFrame2('ADJECTIVE','ASPECTUAL')
adjectiveIAction=subFrame2('ADJECTIVE','I_ACTION')

prepositionOccurrence=subFrame2('PREPOSITION','OCCURRENCE')
prepositionState=subFrame2('PREPOSITION','STATE')
prepositionIState=subFrame2('PREPOSITION','I_STATE')
prepositionReporting=subFrame2('PREPOSITION','REPORTING')
prepositionPerception=subFrame2('PREPOSITION','PERCEPTION')
prepositionAspectual=subFrame2('PREPOSITION','ASPECTUAL')
prepositionIAction=subFrame2('PREPOSITION','I_ACTION')

otherOccurrence=subFrame2('OTHER','OCCURRENCE')
otherState=subFrame2('OTHER','STATE')
otherIState=subFrame2('OTHER','I_STATE')
otherReporting=subFrame2('OTHER','REPORTING')
otherPerception=subFrame2('OTHER','PERCEPTION')
otherAspectual=subFrame2('OTHER','ASPECTUAL')
otherIAction=subFrame2('OTHER','I_ACTION')


verbPast=subFrame2('VERB','PAST')
verbPresent=subFrame2('VERB','PRESENT')
verbFuture=subFrame2('VERB','FUTURE')
verbNone=subFrame2('VERB','NONE')
verbInfinitive=subFrame2('VERB','INFINITIVE')
verbPresPart=subFrame2('VERB','PRESPART')
verbPastPart=subFrame2('VERB','PASTPART')

nounPast=subFrame2('NOUN','PAST')
nounPresent=subFrame2('NOUN','PRESENT')
nounFuture=subFrame2('NOUN','FUTURE')
nounNone=subFrame2('NOUN','NONE')
nounInfinitive=subFrame2('NOUN','INFINITIVE')
nounPresPart=subFrame2('NOUN','PRESPART')
nounPastPart=subFrame2('NOUN','PASTPART')

adjectivePast=subFrame2('ADJECTIVE','PAST')
adjectivePresent=subFrame2('ADJECTIVE','PRESENT')
adjectiveFuture=subFrame2('ADJECTIVE','FUTURE')
adjectiveNone=subFrame2('ADJECTIVE','NONE')
adjectiveInfinitive=subFrame2('ADJECTIVE','INFINITIVE')
adjectivePresPart=subFrame2('ADJECTIVE','PRESPART')
adjectivePastPart=subFrame2('ADJECTIVE','PASTPART')

prepositionPast=subFrame2('PREPOSITION','PAST')
prepositionPresent=subFrame2('PREPOSITION','PRESENT')
prepositionFuture=subFrame2('PREPOSITION','FUTURE')
prepositionNone=subFrame2('PREPOSITION','NONE')
prepositionInfinitive=subFrame2('PREPOSITION','INFINITIVE')
prepositionPresPart=subFrame2('PREPOSITION','PRESPART')
prepositionPastPart=subFrame2('PREPOSITION','PASTPART')

otherPast=subFrame2('OTHER','PAST')
otherPresent=subFrame2('OTHER','PRESENT')
otherFuture=subFrame2('OTHER','FUTURE')
otherNone=subFrame2('OTHER','NONE')
otherInfinitive=subFrame2('OTHER','INFINITIVE')
otherPresPart=subFrame2('OTHER','PRESPART')
otherPastPart=subFrame2('OTHER','PASTPART')

sink()

groups = c(verbOccurrence, verbState, verbIState, verbReporting, verbPerception, verbAspectual, verbIAction, nounOccurrence, nounState, nounIState, nounReporting, nounPerception, nounAspectual, nounIAction, adjectiveOccurrence, adjectiveState, adjectiveIState, adjectiveReporting, adjectivePerception, adjectiveAspectual, adjectiveIAction, prepositionOccurrence, prepositionState, prepositionIState, prepositionReporting, prepositionPerception, prepositionAspectual, prepositionIAction, otherOccurrence, otherState, otherIState, otherReporting, otherPerception, otherAspectual, otherIAction)

groupsLess = c(nounOccurrence, nounState, nounIState, nounReporting, nounPerception, nounAspectual, nounIAction, adjectiveOccurrence, adjectiveState, adjectiveIState, adjectiveReporting, adjectivePerception, adjectiveAspectual, adjectiveIAction, prepositionOccurrence, prepositionState, prepositionIState, prepositionReporting, prepositionPerception, prepositionAspectual, prepositionIAction, otherOccurrence, otherState, otherIState, otherReporting, otherPerception, otherAspectual, otherIAction)

# getWordFreq()

# rep('NOUN',7) subFrame2, c("OCCURRENCE", "STATE", "I_STATE", "REPORTING", "ASPECTUAL", "PERCEPTION", "I_ACTION")


