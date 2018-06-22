
EventAdjectiveFrame = subset(instanceEventData, pos == "ADJECTIVE")

eventAdjectives = EventAdjectiveFrame$eventID

eventAdjectivesOccurrencesFrame = subset(EventAdjectiveFrame, class == "OCCURRENCE")

EventAdjectiveOccurrencesTenseFrame = subset(EventAdjectiveOccurrences, tense != "NONE")

eventAdjectiveOccurrencesTense = EventAdjectiveOccurrencesTenseFrame$eventID

multiEventReport(eventAdjectiveOccurrencesTense,docs)

	# [1] "``Obviously, it is deeply discouraging for the family after 22 months, but there is no proof of life. APW19980219.0476.tml"
	# <EVENT eid="d10e33" class="OCCURRENCE" word_form="discouraging">discouraging</EVENT> 
	# <MAKEINSTANCE eventID="d10e33" eiid="d10ei2480" tense="PRESENT" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 

	# [1] "He said the move toward standard operating systems means customers are n't locked into buying from their traditional computer supplier and can force prices down. wsj_0568.tml"
	# <EVENT eid="d114e1993" class="OCCURRENCE" word_form="locked">locked</EVENT> 
	# <MAKEINSTANCE eventID="d114e1993" eiid="d114ei2887" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 


	# [1] "Shoney's said the latest restructuring affected bank indebtedness that was incurred to finance $585 million of the company's $728 million recapitalization that took place in 1988. wsj_0667.tml"
	# <EVENT eid="d128e58" class="OCCURRENCE" word_form="affected">affected</EVENT> 
	# <MAKEINSTANCE eventID="d128e58" eiid="d128ei2010" tense="PAST" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 
	# 	*** Not actually an Adjective


	# [1] "Hewlett-Packard, a Palo Alto, Calif., computer company, said it acquired the stock \"to develop and maintain a strategic partnership in which each company remains independent while working together to market and sell their products.\" wsj_0679.tml"
	# <EVENT eid="d132e17" class="OCCURRENCE" word_form="sell">sell</EVENT> 
	# <MAKEINSTANCE eventID="d132e17" eiid="d132ei319" tense="PRESENT" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 
	# 	*** Not actually an Adjective
		

	# [1] "The No. 1 U.S. auto maker then wrote Jaguar that it intends \"to go to that 15%\" level once it wins the U.S. clearance to go beyond $15 million, a Jaguar spokesman said yesterday. wsj_0745.tml"
	# <EVENT eid="d139e16" class="OCCURRENCE" word_form="go">go</EVENT> 
	# <MAKEINSTANCE eventID="d139e16" eiid="d139ei2464" tense="PRESENT" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 
	# 	*** Not actually an Adjective


	# [1] "``Small nationalist communities are not going to be left on their own this summer,'' said Gerard Rice, a former IRA prisoner who leads anti-Orange protests in a Catholic neighborhood of south Belfast. APW19980322.0749.tml"
	# <EVENT eid="d19e94" class="OCCURRENCE" word_form="left">left</EVENT> 
	# <MAKEINSTANCE eventID="d19e94" eiid="d19ei2090" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
	# 	*** What is this??


	# [1] "A UN spokesman says UN secretary general Kofi Annan is on the verge of a breakthrough, but added it's not done yet. CNN19980222.1130.0084.tml"
	# <EVENT eid="d25e7" class="OCCURRENCE" word_form="done">done</EVENT> 
	# <MAKEINSTANCE eventID="d25e7" eiid="d25ei163" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 


	# [1] "No one was hurt, but firefighters ordered the evacuation of nearby homes and said they'll monitor the shifting ground. PRI19980213.2000.0313.tml"
	# <EVENT eid="d37e18" class="OCCURRENCE" word_form="hurt">hurt</EVENT> 
	# <MAKEINSTANCE eventID="d37e18" eiid="d37ei218" tense="PAST" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
		


	# [1] "U.S. commanders in charge of planning for Middle East crises have indicated in the past that they were capable of deploying as many as 300,000 troops. WSJ900813-0157.tml"
	# <EVENT eid="d47e369" class="OCCURRENCE" word_form="capable">capable</EVENT> 
	# <MAKEINSTANCE eventID="d47e369" eiid="d47ei1359" tense="PAST" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 
		

	# [1] "The date was unaffected by the last-ditch Soviet peace initiative. WSJ910225-0066.tml"
	# <EVENT eid="d48e500" class="OCCURRENCE" word_form="unaffected">unaffected</EVENT> 
	# <MAKEINSTANCE eventID="d48e500" eiid="d48ei1383" tense="PAST" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 


	# [1] "The Pentagon said today it will re-examine the question are the remains inside the Tomb of the Unknown from the Vietnam War, in fact, known? ea980120.1830.0456.tml"
	# <EVENT eid="d50e5" class="OCCURRENCE" word_form="known">known</EVENT> 
	# <MAKEINSTANCE eventID="d50e5" eiid="d50ei102" tense="PRESENT" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 


	# [1] "The reduced dividend is payable Jan. 2 to stock of record Dec. 15. wsj_0068.tml"
	# <EVENT eid="d56e15" class="OCCURRENCE" word_form="payable">payable</EVENT> 
	# <MAKEINSTANCE eventID="d56e15" eiid="d56ei139" tense="PRESENT" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 


	# [1] "Rogers said the shares will be convertible into Class B shares, but that the company has the option to redeem the shares before a conversion takes place. wsj_0106.tml"
	# <EVENT eid="d58e27" class="OCCURRENCE" word_form="convertible">convertible</EVENT> 
	# <MAKEINSTANCE eventID="d58e27" eiid="d58ei134" tense="FUTURE" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 

	# [1] "President BushtodaydenouncedSaddam's ``ruinous policiesofwar,'' and saidthe United Statesis ``striking a blow for the principle that might does not make right.'' AP900815-0044.tml"
	# <EVENT eid="d5e39" class="OCCURRENCE" word_form="striking">
	#   <NG>striking</NG>
	# </EVENT> 
	# <MAKEINSTANCE eventID="d5e39" eiid="d5ei1543" tense="PRESENT" aspect="PROGRESSIVE" polarity="POS" pos="ADJECTIVE"/> 
	# 	*** Why adj?

	# [1] "Sales, however , were little changed at 2.46 billion guilders, compared with 2.42 billion guilders. wsj_0132.tml"
	# <EVENT eid="d62e31" class="OCCURRENCE" word_form="changed">changed</EVENT> 
	# <MAKEINSTANCE eventID="d62e31" eiid="d62ei2016" tense="PAST" aspect="NONE" polarity="POS" pos="ADJECTIVE"/> 
	

EventAdjectiveOccurrencesNoTenseFrame = subset(eventAdjectivesOccurrencesFrame, tense == "NONE")

eventAdjectiveOccurrencesNoTense = EventAdjectiveOccurrencesNoTenseFrame$eventID

multiEventReport(eventAdjectiveOccurrencesNoTense,docs)


