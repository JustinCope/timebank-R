# BEFORE NOTES

# Event:Time

# 	The Day
# 		2 d119t338 <NA> d119ei2073 d119l105 BEGINS d119s206 
# 		3 d119t338 <NA> d119ei2072 d119l106 ENDS d119s206 

# 	Several weeks
# 		6 d159t151 ? ? ? ? d159s154
# 		5 d159t151 <NA> d159ei2019 d159l76 BEGINS



# uniqueBeforeLinkID = c("d1s13", "d3s43", "d4s4", "d10s61", "d24s44", "d33s2222", "d33s2186", "d46s44", "d58s15", "d61s13", "d112s98", "d116s146", "d134s18", "d139s102", "d145s180", "d146s224", "d152s98", "d164s9", "d164s152")
# uniqueBeforeLinks = c()
# for(i in 1:length(uniqueBeforeLinkID)){
# 	for(j in 1:length(tlinkWithSignals)){
# 		if(xmlGetAttr(tlinkWithSignals[[j]],"signalID")==uniqueBeforeLinkID[i]){
# 			uniqueBeforeLinks[i] == tlinkWithSignals[j]
# 		}
# 	}
# }
# uniqueBeforeData = merge(merge(merge(makeDataFrame(uniqueBeforeLinks),instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE),instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE),timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE)



# TIMEX COMPLEMENTS

# Naked
# 	1 d4t35 <NA> d4ei263 d4l3 BEFORE d4s4 
# 	4 d139t157 <NA> d139ei2520 d139l41 BEFORE d139s102
 	


sort(table(extractIDfromAll(beforeLinks,"signalID")))

#   d10s61  d112s98 d116s146  d134s18 d139s102 d145s180 d146s224  d152s98 
#        1        1        1        1        1        1        1        1 
# d164s152   d164s9    d1s13   d24s44 d33s2186 d33s2222    d3s43   d46s44 
#        1        1        1        1        1        1        1        1 
#     d4s4   d58s15   d61s13  d115s48  d145s91 d119s206 d159s154 
#        1        1        1        2        2        3        3 

uniqueBeforeLinkID = c("d1s13", "d3s43", "d4s4", "d10s61", "d24s44", "d33s2222", "d33s2186", "d46s44", "d58s15", "d61s13", "d112s98", "d116s146", "d134s18", "d139s102", "d145s180", "d146s224", "d152s98", "d164s9", "d164s152")


for(i in 1:length(uniqueBeforeLinkID)){
	foo = subset(beforeData,signalID == uniqueBeforeLinkID[[i]])
	print(i)
	print(toString(foo$tense.x[[1]]))
}

for(i in 1:length(uniqueBeforeLinkID)){
	print("")
	print(i)
	foo = subset(beforeData,signalID == uniqueBeforeLinkID[[i]])
	print(paste(foo$tense.x[[1]], foo$aspect.x[[1]], foo$polarity.x[[1]], foo$pos.x[[1]], foo$modality.x[[1]], foo$class.x[[1]], foo$word_form.x[[1]]), sep = " ")
	if(is.na(foo$relatedToTime)){
	print(paste(foo$tense.y[[1]],foo$aspect.y[[1]], foo$polarity.y[[1]], foo$pos.y[[1]], foo$modality.y[[1]], foo$class.y[[1]], foo$word_form.y[[1]], sep=" "))
	} else {
	print(paste(foo$type[[1]], foo$value[[1]], foo$temporalFunction[[1]], foo$functionInDocument[[1]], foo$word_form[[1]], sep = " "))
	}
	print(printSentence(ToSentence(SIDtoSignal(uniqueBeforeLinkID[[i]], docs))))
}




# Dealing with scope issues:

# 	Noun hosts? (1?, 3??, 11, 15?, 19)

# 	Interaction with modals/future? (4, 15, 19)


# Non-temporal uses:

# 	Epistemic/Speech act uses? (10,11)


# Complementless (3, 7)


# Compositional issues:

# 	"once before"? (14)

# 	several months



# Passives and Adjectives:

# 	Passive main clause (6)

# 	Predicate adjective clauses (6)
		
# 	Past participle (passive?) as predicate adjective (2)


# Interaction with main clause Aspect:

# 	Perfect main clause (3, 4, 7, 14)

# 		A couple of present participle before-clauses (18, 5)
# 			but no past participle/perfect before clauses

# 	Present Progressive main clause (18)






# Noun, Noun
# 1 
# "Not that long ago, before the Chinese takeover, the news about real estate here was that the sky was the limit[...]."

# 	TimeBank has news as the host.  Equally plausible that the entire clause 'the news ... was that ...' is the host?


# 11
# This case is convincing to me:
# 	[1] 11 "share of 7%", "7%"?
# 	[1] "NONE NONE POS NOUN NA STATE share"
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE purchases"
# "Nestle's share of 7% before Friday's purchases is far below the shares of market leaders Hershey Foods Corp. and Mars Inc., which have about 40% and 36% of the market, respectively."

# 	This one seems like the "before/after tax" example. Is it the share that is the head modified by the before clause?  Or is it the 7%?


# non-verbal predication in time -- 

# yesterday I met a student.  At what time was this person a student? (Enc)  Presupposes temporal argument in these predicates, Use these 


# 15
# "According to department policy, prosecutors must make a strong showing that lawyers' fees came from assets tainted by illegal profits before any attempts at seizure are made."
# 	noun < noun
# 	showing < attempts
# 		equally (more?) plausible is "make" < "are made"
	 
# 	This is like the item below in 19: 
# 		it is necessary that prosecutors make a strong showing if any attempts at seizure are to be made.

# 		Prosecutors are not permitted to make attempts at seizure until they make a strong showing.

# 		B is sufficient for not A
# 		A is necessary for B


# Noun, Verb
# 19
# "Mr. Panet-Raymond said he doesn't think Messrs. Drabinsky and Gottlieb are "anywhere close" to arranging financing and that investors will need a solid offer before the stock begins to rise again."
# 	noun < present (aspectual)
# 	offer < begins
# 	Is "offer" really the host of 'before'?  
# 	It seems like this is not purely temporal: 

# 		It is necessary for the investors to receive a solid offer if the stocks are to rise again.

# Analysis of need: modal? need is intensional, (alternative worlds in which needs are satisfied, true if in all the need worlds you have such and such.)
# phi is true if and only if in every world in which x does everything that is obligatory, phi is true.

# If the stock is to rise, it is necessary that investors receive a solid offer.
# Compare with non-veridical


# Noun, 0
# 3, 
# Colonel Collins has been the co-pilot before, but this time she's the boss.
# 	noun < date
# 		copilot < 0 (date is implied -- article creation time)

# 	A noun? More likely a state: s:co-pilot(collins)

# 	Now is result state of past state-construed-as-event; episodic use of 'been the co-pilot', not a description of profession? 





# Main Clause Nouns?



# These are plausibly analyzed as modification of verb projection:
# 	[1] 1 "news"? "news was that x" < the takeover
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE news"
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE takeover"
# 	[1] ""

# 	[1] 15 "must make a strong showing" < "any attempts are made"
# 	[1] "NONE NONE POS NOUN must I_ACTION showing"
# 	[1] "NONE NONE POS NOUN NA I_ACTION attempts"
# 	[1] ""

# 	[1] 19 "need a solid offer" < begins to x
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE offer"
# 	[1] "PRESENT NONE POS VERB NA ASPECTUAL begins"





# Verb, Noun
# 2 
# "One of the scenarios widely advanced before the visit is that through the Pope, Cuba, still led by Castro, can begin a more productive relationship with the world."
# 	past participle < np
# 	advanced < visit


# 8
# "Israeli Prime Minister Benjamin Netanyahu says considerable gaps remain between Israeli and Palestinian positions before next week's talks in London."
# 	present < np
# 	remain < talks


# 9 (belongs to Verb/Verb?)
# "Rogers said the shares will be convertible into Class B shares, but that the company has the option to redeem the shares before a conversion takes place."
# 	infinitive < np?
# 	to redeem < conversion takes place

# 	The option is: to redeem the shares before a conversion
# 		or: there is an option to redeem the shares, but only until a conversion.  At such time there will no longer be such an option, because of the conversion...

# 	Not really plausible to argue that the NP is the only candidate complement.

# 10
# "And while there was no profit this year from discontinued operations, last year they contributed #34 million, before tax."
# 	past < np
# 	contributed < tax

# 	What is the status of "tax?" 

# 	The amount of the contribution was 34 million, not adjusted to take taxation into account.  
	

# 13
# "Giant Group owned 22% of Rally's shares before the initial public offering."
# 	past < np
# 	owned < the ipo





# Verb, Verb
# 4
# "Nhek Bunchhay, who had been closely involved in the search for Howes before having to flee the Cambodian capital after a coup d'etat last year, appeared confident he would find Howes' remains."
# 	past perfective + predicate adjective < infinitive
# 	had been involved < flee

# 	But mightn't 'having to flee' ben the relevant projection?
# 	before (there was a state characterized by the necessity of fleeing)


# 5
# "The united states is not authorized to use force before going to the council."
# 	infinitive < present participle
# 	to use force < going


# 7
# "Now the ninth US circuit court of appeals has ruled that the original appeal was flawed since it brought up issues that had not been raised before."
	
# 	negation past perfective < past
# 	raised < convicted
# 	had not been raised before 0

# 	Need to find context to diagnose the annotator's decision.


# 12
# "He disclosed that before Control Data scrapped its ETA Systems Inc. supercomputer business this past spring, those costs were running at nearly 35% of group revenue."
# 	past < past
# 	were running < scrapped

# 	Again: costs were x until SC scrapped business, then no longer x because SC scrapped business.

# 16
# "Computer experts familiar with the flaws, found in Intel's 80486 chip, say the defects don't affect the average user and are likely to be cleared up before most computers using the chip as their \"brains\" appear on the market sometime next year."
# 	infinitive < present
# 	to be cleared up < appear

# 17
# "Once he realized that Paribas's intentions weren't friendly, he said, but before the bid was launched, he sought approval to boost his Paribas stake above 10%."
# 	past < past
# 	sought < launched

# 18
# "The board said Mr. Drabinsky and Vice Chairman Myron Gottlieb are negotiating financing before offering C$16.40 a share to acquire all of Cineplex's shares outstanding."
# 	present progressive < present participle
# 	are negotiating	< offering



# Verb, Adjective
# 6
# And on that basis Keating was released from prison before he was eligible for parole.


# Verb, 0
# 14
# "It has relinquished a golden share only once before -- during British Petroleum Co.'s #2.5 billion ($4 billion) takeover of Britoil PLC in 1988."










# [1] 1
# [1] "NONE NONE POS NOUN NA OCCURRENCE news"
# [1] "NONE NONE POS NOUN NA OCCURRENCE takeover"
# [1] ""

# [1] 2
# [1] "PASTPART NONE POS VERB NA REPORTING advanced"
# [1] "NONE NONE POS NOUN NA OCCURRENCE visit"
# [1] ""




# [1] 4
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE involved"
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE flee"
# [1] ""
# [1] 5
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE use"
# [1] "PRESPART NONE POS VERB NA OCCURRENCE going"
# [1] ""



# [1] 7
# [1] "PAST PERFECTIVE NEG VERB NA OCCURRENCE raised"
# [1] "PAST NONE POS VERB NA OCCURRENCE convicted"
# [1] ""
# [1] 8
# [1] "PRESENT NONE POS VERB NA ASPECTUAL remain"
# [1] "NONE NONE POS NOUN NA OCCURRENCE talks"
# [1] ""
# [1] 9
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE redeem"
# [1] "NONE NONE POS NOUN NA OCCURRENCE conversion"
# [1] ""
# [1] 10
# [1] "PAST NONE POS VERB NA OCCURRENCE contributed"
# [1] "NONE NONE POS NOUN NA OCCURRENCE tax"
# [1] ""



# [1] 12
# [1] "PAST NONE POS VERB NA OCCURRENCE running"
# [1] "PAST NONE POS VERB NA OCCURRENCE scrapped"
# [1] ""

# [1] ""
# [1] 14
# [1] "PRESENT PERFECTIVE POS VERB NA OCCURRENCE relinquished"
# [1] "DATE 1989-10-27 false CREATION_TIME 10/27/89"

# [1] ""
# [1] 15
# [1] "NONE NONE POS NOUN must I_ACTION showing"
# [1] "NONE NONE POS NOUN NA I_ACTION attempts"
# [1] ""
# [1] 16
# [1] "INFINITIVE NONE POS VERB none OCCURRENCE cleared"
# [1] "PRESENT NONE POS VERB NA OCCURRENCE appear"
# [1] ""
# [1] 17
# [1] "PAST NONE POS VERB NA I_ACTION sought"
# [1] "PAST NONE POS VERB NA OCCURRENCE launched"
# [1] ""
# [1] 18
# [1] "PRESENT PROGRESSIVE POS VERB NA I_ACTION negotiating"
# [1] "PRESPART NONE POS VERB NA I_ACTION offering"
# [1] ""
# [1] 19
# [1] "NONE NONE POS NOUN NA OCCURRENCE offer"
# [1] "PRESENT NONE POS VERB NA ASPECTUAL begins"



# [1] 2
# [1] "PASTPART NONE POS VERB NA REPORTING advanced"
# [1] "NONE NONE POS NOUN NA OCCURRENCE visit"
# [1] ""


# [1] 4
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE involved"
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE flee"
# [1] ""
# [1] 5
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE use"
# [1] "PRESPART NONE POS VERB NA OCCURRENCE going"
# [1] ""


# [1] 7
# [1] "PAST PERFECTIVE NEG VERB NA OCCURRENCE raised"
# [1] "PAST NONE POS VERB NA OCCURRENCE convicted"
# [1] ""
# [1] 8
# [1] "PRESENT NONE POS VERB NA ASPECTUAL remain"
# [1] "NONE NONE POS NOUN NA OCCURRENCE talks"
# [1] ""
# [1] 9
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE redeem"
# [1] "NONE NONE POS NOUN NA OCCURRENCE conversion"
# [1] ""
# [1] 10
# [1] "PAST NONE POS VERB NA OCCURRENCE contributed"
# [1] "NONE NONE POS NOUN NA OCCURRENCE tax"
# [1] ""


# [1] 12
# [1] "PAST NONE POS VERB NA OCCURRENCE running"
# [1] "PAST NONE POS VERB NA OCCURRENCE scrapped"
# [1] ""

# [1] ""
# [1] 14
# [1] "PRESENT PERFECTIVE POS VERB NA OCCURRENCE relinquished"
# [1] "DATE 1989-10-27 false CREATION_TIME 10/27/89"

# [1] ""
# [1] 16
# [1] "INFINITIVE NONE POS VERB none OCCURRENCE cleared"
# [1] "PRESENT NONE POS VERB NA OCCURRENCE appear"
# [1] ""
# [1] 17
# [1] "PAST NONE POS VERB NA I_ACTION sought"
# [1] "PAST NONE POS VERB NA OCCURRENCE launched"
# [1] ""
# [1] 18
# [1] "PRESENT PROGRESSIVE POS VERB NA I_ACTION negotiating"
# [1] "PRESPART NONE POS VERB NA I_ACTION offering"
# [1] ""

# [1] 3
# [1] "PRESENT PERFECTIVE POS NOUN NA STATE co-pilot"
# [1] "DATE 1998-03-04 false CREATION_TIME 19980304"
# [1] ""

# [1] 13
# [1] "PAST NONE POS VERB NA STATE owned"
# [1] "NONE NONE POS NOUN NA OCCURRENCE offering"

# [1] 11
# [1] "NONE NONE POS NOUN NA STATE share"
# [1] "NONE NONE POS NOUN NA OCCURRENCE purchases"
# [1] ""


# [1] 6
# [1] "PAST NONE POS VERB NA OCCURRENCE released"
# [1] "PAST NONE POS ADJECTIVE NA STATE eligible"
# [1] ""






# VERB:VERB
	# o/o 	7
	# ia/o 	1
	# ia/ia 	1

	#   PAST:OCCURRENCE(acquired)	:	PRESPART:OCCURRENCE(throwing)	1	d115s48		"Thermo Electronacquired some 6% of Milton Roy's common stock before throwing in the towel and reducing its stake in early September."
	#   							:					   (reducing)	1	d115s48		"

	#   PAST:OCCURRENCE(running)	: 	PAST:OCCURRENCE(scrapped)		1	d116s146	"He disclosed that before Control Data scrapped its ETA Systems Inc. supercomputer business this past spring, those costs were running at nearly 35% of group revenue."
	#       :IACTION(sought)		:				   (launched)		1	d152s98   	"Once he realized that Paribas's intentions weren't friendly, he said, but before the bid was launched, he sought approval to boost his Paribas stake above 10%." 

	#   PASTPERF:OCCURRENCE(raised)		:	PAST:OCCURRENCE(convicted)	1	d33s2186	"Now the ninth US circuit court of appeals has ruled that the original appeal was flawed since it brought up issues that had not been raised before."
	#   PASTPERF:OCCURRENCE(involved) 	: 	INFINITIVE:OCCURRENCE(flee)	1	d10s61		"Nhek Bunchhay, who had been closely involvedin the search for Howes before having to flee the Cambodian capital after a coup d'etat last year, appeared confident he would find Howes' remains."

	#   INFINITIVE:OCCURRENCE(cleared) 	:  	PRESENT:OCCURRENCE(appear)	1	d146s224	"Computer experts familiar with the flaws, found in Intel's 80486 chip, say the defects do n't affect the average user and are likely to be cleared up before most computers using the chip as their \"brains\" appear on the market sometime next year." 
	#   INFINITIVE:OCCURRENCE(use) 		: 	PRESPART::OCCURRENCE(going)	1	d24s44		"The united states is not authorized to use force before going to the council."

	#   PRESENTPROG:IACTION(negotiating)	: 	PRESPART:IACTION(offering)	1	d164s9	"The board said Mr. Drabinsky and Vice Chairman Myron Gottlieb are negotiating financing before offering C$16.40 a share to acquire all of Cineplex's shares outstanding."












