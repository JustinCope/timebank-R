Summary:


Measure phrases:
Before:
	d119l57
	d119l105
	d159l76
	d159l77
After:
	d119l107
	d4l25
	d4l26
	d8l27
	d8l28
	d17l32
	d17l33
	d118l62 -- unique sort of measure
	d118l93

"To mollify shareholders concerned about the long-term value of the company under the BellSouth-LIN agreement, BellSouth also agreed to pay as much as \$10 a share, or \$540 million, if, after five years, the trading value of the new cellular company isn't as high as the value that shareholders would have realized from the McCaw offer.  (wsj\_0584)"
<SIGNAL sid="d118s325" word_form="after">after</SIGNAL> 
<TLINK lid="d118l62" relType="AFTER" eventInstanceID="d118ei2659" relatedToEventInstance="d118ei2657" signalID="d118s325"/> 
<TLINK lid="d118l93" relType="BEGINS" eventInstanceID="d118ei2657" relatedToTime="d118t326" signalID="d118s325"/> 
<TLINK lid="d118l94" relType="ENDS" eventInstanceID="d118ei2659" relatedToTime="d118t326" signalID="d118s325"/> 
<MAKEINSTANCE eventID="d118e327" eiid="d118ei2659" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
	<EVENT eid="d118e327" class="STATE" word_form="high"> high </EVENT> 
<MAKEINSTANCE eventID="d118e147" eiid="d118ei2657" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d118e147" class="I_ACTION" word_form="agreed"> agreed </EVENT> 
<TIMEX3 tid="d118t326" type="DURATION" value="P5Y" temporalFunction="false" functionInDocument="NONE" word_form="five years"><CARDINAL> five </CARDINAL>  years </TIMEX3> 


Conjunction:
Before:
	d115l28
	d145l33
After:
	d151l11 -- not true syntactic argument
	-- one not reducible

"After a short, sharp drop when Asia's financial problems first became clear, the stock market has rebounded and corporate profits have remained healthy."  (NYT19980206.0460)
<SIGNAL sid="d28s252" word_form="after">After</SIGNAL> 
<TLINK lid="d28l23" relType="AFTER" eventInstanceID="d28ei2242" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 
<TLINK lid="d28l49" relType="AFTER" eventInstanceID="d28ei2243" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 
<MAKEINSTANCE eventID="d28e95" eiid="d28ei2242" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d28e95" class="OCCURRENCE" word_form="rebounded"> rebounded </EVENT> 
<MAKEINSTANCE eventID="d28e96" eiid="d28ei2243" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d28e96" class="STATE" word_form="remained"> remained </EVENT> 
<MAKEINSTANCE eventID="d28e251" eiid="d28ei2240" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d28e251" class="OCCURRENCE" word_form="drop"> drop </EVENT> 

This one is not amenable to full reduction, because of differing aspect values of rebound v. remain
	However, we can subtract it from tables for event v. time, tense-aspect, pos, polarity
	We just need to keep it for tables involving event class comparisons

		

Full report:


Before:


"Eight trading days after Oct. 12, the day before the stock market plunge, for instance, the Nasdaq Composite had fallen 4.3\%, compared with 3.3\% for the SampP 500, 3.5\% for the New York Stock Exchange Composite Index and 3.6\% for the industrial average."  (wsj\_0585)
<SIGNAL sid="d119s206" word_form="before">before</SIGNAL> 
<TLINK lid="d119l57" relType="BEFORE" eventInstanceID="d119ei2073" relatedToEventInstance="d119ei2072" signalID="d119s206"/> 
<TLINK lid="d119l105" relType="BEGINS" eventInstanceID="d119ei2073" relatedToTime="d119t338" signalID="d119s206"/> 
<TLINK lid="d119l106" relType="ENDS" eventInstanceID="d119ei2072" relatedToTime="d119t338" signalID="d119s206"/> 
<MAKEINSTANCE eventID="d119e208" eiid="d119ei2073" tense="PAST" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d119e208" class="OCCURRENCE" word_form="fallen">fallen</EVENT> 
<MAKEINSTANCE eventID="d119e205" eiid="d119ei2072" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d119e205" class="OCCURRENCE" word_form="plunge"> plunge </EVENT> 
<TIMEX3 tid="d119t338" type="DATE" value="1989-10-12" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d119t335" word_form="the day"> the day </TIMEX3> 

Remove:
	d119l57
	d119l105



"``We haven't benefited the shareholder as much as we need to,''said Edgar Woolard Jr., Du Pont's chairman and chief executive officer, in an interview several months before he entered his current position in April."  (wsj\_0918)
<SIGNAL sid="d159s154" word_form="before">before</SIGNAL> 
<TLINK lid="d159l23" relType="BEFORE" eventInstanceID="d159ei2019" relatedToEventInstance="d159ei2020" signalID="d159s154"/> 
<TLINK lid="d159l76" relType="BEGINS" eventInstanceID="d159ei2019" relatedToTime="d159t151" signalID="d159s154"/> 
<TLINK lid="d159l77" relType="ENDS" eventInstanceID="d159ei2020" relatedToTime="d159t151" signalID="d159s154"/> 
<MAKEINSTANCE eventID="d159e40" eiid="d159ei2019" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d159e40" class="OCCURRENCE" word_form="interview"> interview </EVENT> 
<MAKEINSTANCE eventID="d159e42" eiid="d159ei2020" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d159e42" class="ASPECTUAL" word_form="entered"> entered </EVENT> 
<TIMEX3 tid="d159t151" type="DURATION" value="PXM" temporalFunction="true" functionInDocument="NONE" endPoint="d159t153" word_form="several months"> several months </TIMEX3> 

Remove:
	d159l76
	d159l77


"Thermo Electron acquired some 6\% of Milton Roy's common stock before throwing in the towel and reducing its stake in early September."  (wsj\_0570)
<SIGNAL sid="d115s48" word_form="before">before</SIGNAL> 
<TLINK lid="d115l26" relType="BEFORE" eventInstanceID="d115ei459" relatedToEventInstance="d115ei460" signalID="d115s48"/> 
<TLINK lid="d115l28" relType="BEFORE" eventInstanceID="d115ei459" relatedToEventInstance="d115ei461" signalID="d115s48"/> 
<MAKEINSTANCE eventID="d115e47" eiid="d115ei459" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d115e47" class="OCCURRENCE" stem="acquire" word_form="acquired"> acquired </EVENT> 
<MAKEINSTANCE eventID="d115e49" eiid="d115ei460" tense="PRESPART" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d115e49" class="OCCURRENCE" stem="throw" word_form="throwing"> throwing </EVENT> 
<MAKEINSTANCE eventID="d115e50" eiid="d115ei461" tense="PRESPART" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d115e50" class="OCCURRENCE" stem="reduce" word_form="reducing"> reducing </EVENT> 

Remove:
	d115l28



"Under the Racketeer Influenced and Corrupt Organizations law, or RICO, the government has the authority to seek to freeze or seize a defendant's assets before trial."  (wsj\_0778)
<SIGNAL sid="d145s91" word_form="before">before</SIGNAL> 
<TLINK lid="d145l32" relType="BEFORE" eventInstanceID="d145ei2026" relatedToEventInstance="d145ei2028" signalID="d145s91"/> 
<TLINK lid="d145l33" relType="BEFORE" eventInstanceID="d145ei2027" relatedToEventInstance="d145ei2028" signalID="d145s91"/>
<MAKEINSTANCE eventID="d145e88" eiid="d145ei2026" tense="INFINITIVE" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d145e88" class="OCCURRENCE" word_form="freeze"> freeze </EVENT> 
<MAKEINSTANCE eventID="d145e89" eiid="d145ei2027" tense="INFINITIVE" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d145e89" class="OCCURRENCE" word_form="seize"> seize </EVENT> 
<MAKEINSTANCE eventID="d145e90" eiid="d145ei2028" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d145e90" class="OCCURRENCE" word_form="trial"> trial </EVENT> 

Remove:
	d145l33



After:

"After a short, sharp drop when Asia's financial problems first became clear, the stock market has rebounded and corporate profits have remained healthy."  (NYT19980206.0460)
<SIGNAL sid="d28s252" word_form="after">After</SIGNAL> 
<TLINK lid="d28l23" relType="AFTER" eventInstanceID="d28ei2242" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 
<TLINK lid="d28l49" relType="AFTER" eventInstanceID="d28ei2243" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 
<MAKEINSTANCE eventID="d28e95" eiid="d28ei2242" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d28e95" class="OCCURRENCE" word_form="rebounded"> rebounded </EVENT> 
<MAKEINSTANCE eventID="d28e96" eiid="d28ei2243" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d28e96" class="STATE" word_form="remained"> remained </EVENT> 
<MAKEINSTANCE eventID="d28e251" eiid="d28ei2240" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d28e251" class="OCCURRENCE" word_form="drop"> drop </EVENT> 

This one is not amenable to reduction, because of differing aspect values of rebound v. remain



"Eight trading days after Oct. 12, the day before the stock market plunge, for instance, the Nasdaq Composite had fallen 4.3\%, compared with 3.3\% for the SampP 500, 3.5\% for the New York Stock Exchange Composite Index and 3.6\% for the industrial average."  (wsj\_0585)
<SIGNAL sid="d119s337" word_form="after">after</SIGNAL> 
<TLINK lid="d119l58" relType="AFTER" eventInstanceID="d119ei2073" relatedToTime="d119t335" signalID="d119s337"/> 
<TLINK lid="d119l107" relType="ENDS" eventInstanceID="d119ei2073" relatedToTime="d119t336" signalID="d119s337"/>   
<MAKEINSTANCE eventID="d119e208" eiid="d119ei2073" tense="PAST" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d119e208" class="OCCURRENCE" word_form="fallen">  fallen  </EVENT> 
<TIMEX3 tid="d119t335" type="DATE" value="1989-10-12" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d119t294" word_form="oct. 12">  Oct. 12  </TIMEX3> 
<TIMEX3 tid="d119t336" type="DURATION" value="P8D" mod="EQUAL_OR_MORE" temporalFunction="false" functionInDocument="NONE" beginPoint="d119t335" word_form="eight trading days"><CARDINAL>  Eight  </CARDINAL>   trading days  </TIMEX3> 

Remove:
	d119l107  


"It will have 11.8 million shares outstanding after the offering, with Healthdyne owning about 65\% of the total."  (wsj\_0806)
<SIGNAL sid="d151s19" word_form="after">after</SIGNAL> 
<TLINK lid="d151l9" relType="AFTER" eventInstanceID="d151ei127" relatedToEventInstance="d151ei128" signalID="d151s19"/> 
<TLINK lid="d151l11" relType="AFTER" eventInstanceID="d151ei129" relatedToEventInstance="d151ei128" signalID="d151s19"/> 
<MAKEINSTANCE eventID="d151e24" eiid="d151ei127" tense="FUTURE" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d151e24" class="STATE" stem="have" word_form="have"> have </EVENT> 
<MAKEINSTANCE eventID="d151e18" eiid="d151ei128" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d151e18" class="OCCURRENCE" stem="offer" word_form="offering"> offering </EVENT> 
<MAKEINSTANCE eventID="d151e20" eiid="d151ei129" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d151e20" class="STATE" stem="own" word_form="owning"> owning </EVENT> 

Remove:
	d151l11 -- like in since chapter, the event argument is not a true syntactic argument

"It wasn't until twenty years after the first astronauts were chosen that NASA finally included six women, and they were all scientists, not pilots.  (ABC19980304.1830.1636)"
<SIGNAL sid="d4s66" word_form="after">after</SIGNAL> 
<TLINK lid="d4l6" relType="AFTER" eventInstanceID="d4ei266" relatedToEventInstance="d4ei265" signalID="d4s66"/> 
<TLINK lid="d4l25" relType="BEGINS" eventInstanceID="d4ei265" relatedToTime="d4t34" signalID="d4s66"/> 
<TLINK lid="d4l26" relType="ENDS" eventInstanceID="d4ei266" relatedToTime="d4t34" signalID="d4s66"/> 
<MAKEINSTANCE eventID="d4e6" eiid="d4ei265" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d4e6" class="OCCURRENCE" word_form="chosen"> chosen </EVENT> 
<MAKEINSTANCE eventID="d4e7" eiid="d4ei266" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d4e7" class="OCCURRENCE" word_form="included"> included </EVENT> 
<TIMEX3 tid="d4t34" type="DURATION" value="P20Y" temporalFunction="false" functionInDocument="NONE" word_form="twenty years"><CARDINAL> twenty </CARDINAL>  years </TIMEX3> 

Remove:
	d4l25
	d4l26

"This move comes barely a month after Qantas suspended a number of services between Australia, Indonesia, Thailand and Malaysia in the wake of the Asian economic crisis.  (APW19980213.1320)"
<SIGNAL sid="d8s58" word_form="after">after</SIGNAL> 
<TLINK lid="d8l5" relType="AFTER" eventInstanceID="d8ei325" relatedToEventInstance="d8ei326" signalID="d8s58" origin="USER"/> 
<TLINK lid="d8l27" relType="BEGINS" eventInstanceID="d8ei326" relatedToTime="d8t44" signalID="d8s58" origin="USER"/> 
<TLINK lid="d8l28" relType="ENDS" eventInstanceID="d8ei325" relatedToTime="d8t44" signalID="d8s58" origin="USER"/>      
<MAKEINSTANCE eventID="d8e28" eiid="d8ei325" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
	<EVENT eid="d8e28" class="OCCURRENCE" stem="move" word_form="move"> move </EVENT> 
<MAKEINSTANCE eventID="d8e5" eiid="d8ei326" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d8e5" class="ASPECTUAL" stem="suspend" word_form="suspended"> suspended </EVENT> 
<TIMEX3 tid="d8t44" type="DURATION" value="P1M" temporalFunction="false" functionInDocument="NONE" word_form="a month"> a month </TIMEX3> 

Remove:
	d8l27
	d8l28

"An American leader of a U.N. weapons inspection team resumed work in Iraq Friday, nearly two months after his team was effectively blocked.  (APW19980306.1001)"
<SIGNAL sid="d17s3" word_form="after">after</SIGNAL> 
<TLINK lid="d17l2" relType="AFTER" eventInstanceID="d17ei1233" relatedToEventInstance="d17ei1235" signalID="d17s3"/> 
<TLINK lid="d17l32" relType="BEGINS" eventInstanceID="d17ei1235" relatedToTime="d17t139" signalID="d17s3"/> 
<TLINK lid="d17l33" relType="ENDS" eventInstanceID="d17ei1233" relatedToTime="d17t139" signalID="d17s3"/> 
<MAKEINSTANCE eventID="d17e1" eiid="d17ei1233" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d17e1" class="ASPECTUAL" word_form="resumed"> resumed </EVENT> 
<MAKEINSTANCE eventID="d17e4" eiid="d17ei1235" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d17e4" class="OCCURRENCE" word_form="blocked"> blocked </EVENT> 
<TIMEX3 tid="d17t139" type="DURATION" value="P2M" mod="APPROX" temporalFunction="true" functionInDocument="NONE" endPoint="d17t138" word_form="nearly two months"> nearly  <CARDINAL> two </CARDINAL>  months </TIMEX3> 

Remove:
	d17l32
	d17l33

"To mollify shareholders concerned about the long-term value of the company under the BellSouth-LIN agreement, BellSouth also agreed to pay as much as \$10 a share, or \$540 million, if, after five years, the trading value of the new cellular company isn't as high as the value that shareholders would have realized from the McCaw offer.  (wsj\_0584)"
<SIGNAL sid="d118s325" word_form="after">after</SIGNAL> 
<TLINK lid="d118l62" relType="AFTER" eventInstanceID="d118ei2659" relatedToEventInstance="d118ei2657" signalID="d118s325"/> 
<TLINK lid="d118l93" relType="BEGINS" eventInstanceID="d118ei2657" relatedToTime="d118t326" signalID="d118s325"/> 
<TLINK lid="d118l94" relType="ENDS" eventInstanceID="d118ei2659" relatedToTime="d118t326" signalID="d118s325"/> 
<MAKEINSTANCE eventID="d118e327" eiid="d118ei2659" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
	<EVENT eid="d118e327" class="STATE" word_form="high"> high </EVENT> 
<MAKEINSTANCE eventID="d118e147" eiid="d118ei2657" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
	<EVENT eid="d118e147" class="I_ACTION" word_form="agreed"> agreed </EVENT> 
<TIMEX3 tid="d118t326" type="DURATION" value="P5Y" temporalFunction="false" functionInDocument="NONE" word_form="five years"><CARDINAL> five </CARDINAL>  years </TIMEX3> 

Remove:
	d118l93
	d118l94	

