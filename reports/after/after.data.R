# AFTER 

# Adjective Complement
# 	lid="d173l44"
# 	eventInstanceID="d173ei2475"     
# 	eventID.x="d173e84"
# 	tense.x="PAST"
# 	aspect.x="NONE"
# 	polarity.x="POS"
# 	pos.x="VERB"
# 	modality.x="<NA>"
# 	class.x   	 
# 	REPORTING             
# 	word_form.x="announced"

# 	relType="AFTER"
# 	signalID="d173s2003"

# 	relatedToEventInstance="d173ei2477" 
# 	eventID.y="d173e2002"
# 	tense.y="NONE"
# 	aspect.y="NONE"
# 	polarity.y="POS"
# 	pos.y="ADJECTIVE"  
# 	class.y="OCCURRENCE"
# 	word_form.y="close"



xtabs(~ pos.x + pos.y, data=afterData)

#              pos.y
# pos.x         VERB NOUN ADJECTIVE   DATE DURATION total
#   VERB          20   21         1   2        9    53
#   NOUN           3    3         0   1        1    8
#   ADJECTIVE      1    1         0   1        2    5
#   DURATION    0 1     0 0   0   1 

#   Total     24    26    1 4   12    67


xtabs(~ pos.x + type.y, data=afterData)


xtabs(~ type.x + pos.y, data=afterData)


xtabs(~ type.x + type.y, data=afterData)



xtabs(~ pos.x + type.y, data=afterData)

xtabs(~ type.x + pos.y, data=afterData)

xtabs(~ type.x + type.y, data=afterData)


afterLinks

# [[1]]
# <TLINK lid="d1l31" relType="ENDS" eventInstanceID="d1ei418" relatedToTime="d1t99" signalID="d1s306"/> 

# [[2]]
# <TLINK lid="d4l6" relType="AFTER" eventInstanceID="d4ei266" relatedToEventInstance="d4ei265" signalID="d4s66"/> 

# [[3]]
# <TLINK lid="d4l25" relType="BEGINS" eventInstanceID="d4ei265" relatedToTime="d4t34" signalID="d4s66"/> 

# [[4]]
# <TLINK lid="d4l26" relType="ENDS" eventInstanceID="d4ei266" relatedToTime="d4t34" signalID="d4s66"/> 

# [[5]]
# <TLINK lid="d6l17" relType="IAFTER" eventInstanceID="d6ei1543" relatedToEventInstance="d6ei1542" signalID="d6s307"/> 

# [[6]]
# <TLINK lid="d6l51" relType="AFTER" eventInstanceID="d6ei1607" relatedToEventInstance="d6ei1609" signalID="d6s323"/> 

# [[7]]
# <TLINK lid="d7l9" relType="AFTER" eventInstanceID="d7ei2003" relatedToEventInstance="d7ei2007" signalID="d7s113"/> 

# [[8]]
# <TLINK lid="d8l5" relType="AFTER" eventInstanceID="d8ei325" relatedToEventInstance="d8ei326" signalID="d8s58" origin="USER"/> 

# [[9]]
# <TLINK lid="d8l27" relType="BEGINS" eventInstanceID="d8ei326" relatedToTime="d8t44" signalID="d8s58" origin="USER"/> 

# [[10]]
# <TLINK lid="d8l28" relType="ENDS" eventInstanceID="d8ei325" relatedToTime="d8t44" signalID="d8s58" origin="USER"/> 

# [[11]]
# <TLINK lid="d10l11" relType="AFTER" eventInstanceID="d10ei2473" relatedToEventInstance="d10ei2474" signalID="d10s25"/> 

# [[12]]
# <TLINK lid="d10l18" relType="AFTER" eventInstanceID="d10ei2480" relatedToTime="d10t138" signalID="d10s155"/> 

# [[13]]
# <TLINK lid="d10l24" relType="AFTER" eventInstanceID="d10ei2500" relatedToEventInstance="d10ei2501" signalID="d10s161"/> 

# [[14]]
# <TLINK lid="d10l35" relType="AFTER" eventInstanceID="d10ei2526" relatedToEventInstance="d10ei2527" signalID="d10s97"/> 

# [[15]]
# <TLINK lid="d15l8" relType="AFTER" eventInstanceID="d15ei2334" relatedToEventInstance="d15ei2335" signalID="d15s57"/> 

# [[16]]
# <TLINK lid="d17l2" relType="AFTER" eventInstanceID="d17ei1233" relatedToEventInstance="d17ei1235" signalID="d17s3"/> 

# [[17]]
# <TLINK lid="d17l22" relType="AFTER" eventInstanceID="d17ei1304" relatedToEventInstance="d17ei1305" signalID="d17s119"/> 

# [[18]]
# <TLINK lid="d17l32" relType="BEGINS" eventInstanceID="d17ei1235" relatedToTime="d17t139" signalID="d17s3"/> 

# [[19]]
# <TLINK lid="d17l33" relType="ENDS" eventInstanceID="d17ei1233" relatedToTime="d17t139" signalID="d17s3"/> 

# [[20]]
# <TLINK lid="d19l31" relType="AFTER" eventInstanceID="d19ei2101" relatedToEventInstance="d19ei2103" signalID="d19s114"/> 

# [[21]]
# <TLINK lid="d28l21" relType="AFTER" eventInstanceID="d28ei2237" relatedToEventInstance="d28ei2238" signalID="d28s84"/> 

# [[22]]
# <TLINK lid="d28l23" relType="AFTER" eventInstanceID="d28ei2242" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 

# [[23]]
# <TLINK lid="d28l49" relType="AFTER" eventInstanceID="d28ei2243" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 

# [[24]]
# <TLINK lid="d30l10" relType="AFTER" eventInstanceID="d30ei214" relatedToEventInstance="d30ei215" signalID="d30s48"/> 

# [[25]]
# <TLINK lid="d38l16" relType="AFTER" eventInstanceID="d38ei226" relatedToEventInstance="d38ei227" signalID="d38s65"/> 

# [[26]]
# <TLINK lid="d41l19" relType="AFTER" eventInstanceID="d41ei369" relatedToEventInstance="d41ei370" signalID="d41s32"/> 

# [[27]]
# <TLINK lid="d66l7" relType="AFTER" eventInstanceID="d66ei146" relatedToEventInstance="d66ei147" signalID="d66s82"/> 

# [[28]]
# <TLINK lid="d66l17" relType="AFTER" eventInstanceID="d66ei137" relatedToEventInstance="d66ei138" signalID="d66s3"/> 

# [[29]]
# <TLINK lid="d77l5" relType="AFTER" eventInstanceID="d77ei150" relatedToEventInstance="d77ei153" signalID="d77s2"/> 

# [[30]]
# <TLINK lid="d78l7" relType="AFTER" eventInstanceID="d78ei2223" relatedToEventInstance="d78ei2220" signalID="d78s16"/> 

# [[31]]
# <TLINK lid="d80l13" relType="AFTER" eventInstanceID="d80ei2156" relatedToEventInstance="d80ei2155" signalID="d80s1989"/> 

# [[32]]
# <TLINK lid="d80l17" relType="AFTER" eventInstanceID="d80ei2158" relatedToEventInstance="d80ei2159" signalID="d80s2082"/> 

# [[33]]
# <TLINK lid="d88l7" relType="AFTER" eventInstanceID="d88ei333" relatedToTime="d88t79" signalID="d88s48"/> 

# [[34]]
# <TLINK lid="d89l23" relType="AFTER" eventInstanceID="d89ei249" relatedToEventInstance="d89ei250" signalID="d89s36"/> 

# [[35]]
# <TLINK lid="d93l13" relType="AFTER" eventInstanceID="d93ei223" relatedToEventInstance="d93ei222" signalID="d93s27"/> 

# [[36]]
# <TLINK lid="d101l30" relType="AFTER" eventInstanceID="d101ei2031" relatedToEventInstance="d101ei2032" signalID="d101s119"/> 

# [[37]]
# <TLINK lid="d104l24" relType="AFTER" eventInstanceID="d104ei2020" relatedToEventInstance="d104ei2023" signalID="d104s37"/> 

# [[38]]
# <TLINK lid="d105l2" relType="AFTER" eventInstanceID="d105ei1990" relatedToEventInstance="d105ei1991" signalID="d105s3"/> 

# [[39]]
# <TLINK lid="d116l44" relType="AFTER" eventInstanceID="d116ei2708" relatedToTime="d116t1994" signalID="d116s1993"/> 

# [[40]]
# <TLINK lid="d118l62" relType="AFTER" eventInstanceID="d118ei2659" relatedToEventInstance="d118ei2657" signalID="d118s325"/> 

# [[41]]
# <TLINK lid="d118l93" relType="BEGINS" eventInstanceID="d118ei2657" relatedToTime="d118t326" signalID="d118s325"/> 

# [[42]]
# <TLINK lid="d118l94" relType="ENDS" eventInstanceID="d118ei2659" relatedToTime="d118t326" signalID="d118s325"/> 

# [[43]]
# <TLINK lid="d119l37" relType="AFTER" eventInstanceID="d119ei2036" relatedToEventInstance="d119ei2037" signalID="d119s96"/> 

# [[44]]
# <TLINK lid="d119l58" relType="AFTER" eventInstanceID="d119ei2073" relatedToTime="d119t335" signalID="d119s337"/> 

# [[45]]
# <TLINK lid="d119l90" relType="AFTER" eventInstanceID="d119ei2116" relatedToEventInstance="d119ei2117" signalID="d119s374"/> 

# [[46]]
# <TLINK lid="d119l94" relType="AFTER" eventInstanceID="d119ei2121" relatedToEventInstance="d119ei2122" signalID="d119s376"/> 

# [[47]]
# <TLINK lid="d119l107" relType="ENDS" eventInstanceID="d119ei2073" relatedToTime="d119t336" signalID="d119s337"/> 

# [[48]]
# <TLINK lid="d120l8" relType="AFTER" eventInstanceID="d120ei1370" relatedToEventInstance="d120ei1371" signalID="d120s209"/> 

# [[49]]
# <TLINK lid="d120l10" relType="AFTER" eventInstanceID="d120ei1372" relatedToEventInstance="d120ei1374" signalID="d120s14"/> 

# [[50]]
# <TLINK lid="d120l17" relType="AFTER" eventInstanceID="d120ei1378" relatedToEventInstance="d120ei1379" signalID="d120s213"/> 

# [[51]]
# <TLINK lid="d123l15" relType="AFTER" eventInstanceID="d123ei2010" relatedToTime="d123t42" signalID="d123s40"/> 

# [[52]]
# <TLINK lid="d128l14" relType="AFTER" eventInstanceID="d128ei2002" relatedToEventInstance="d128ei2003" signalID="d128s12"/> 

# [[53]]
# <TLINK lid="d131l59" relType="AFTER" eventInstanceID="d131ei831" relatedToEventInstance="d131ei833" signalID="d131s112"/> 

# [[54]]
# <TLINK lid="d137l1" relType="AFTER" eventInstanceID="d137ei133" relatedToTime="d137t29" signalID="d137s25"/> 

# [[55]]
# <TLINK lid="d139l29" relType="AFTER" eventInstanceID="d139ei2502" relatedToEventInstance="d139ei2503" signalID="d139s71"/> 

# [[56]]
# <TLINK lid="d141l13" relType="AFTER" eventInstanceID="d141ei105" relatedToEventInstance="d141ei104" signalID="d141s16"/> 

# [[57]]
# <TLINK lid="d145l36" relType="AFTER" eventInstanceID="d145ei2030" relatedToEventInstance="d145ei2031" signalID="d145s209"/> 

# [[58]]
# <TLINK lid="d145l45" relType="AFTER" eventInstanceID="d145ei2043" relatedToEventInstance="d145ei2044" signalID="d145s215"/> 

# [[59]]
# <TLINK lid="d147l19" relType="AFTER" eventInstanceID="d147ei428" relatedToEventInstance="d147ei425" signalID="d147s52" origin="USER"/> 

# [[60]]
# <TLINK lid="d151l9" relType="AFTER" eventInstanceID="d151ei127" relatedToEventInstance="d151ei128" signalID="d151s19"/> 

# [[61]]
# <TLINK lid="d151l11" relType="AFTER" eventInstanceID="d151ei129" relatedToEventInstance="d151ei128" signalID="d151s19"/> 

# [[62]]
# <TLINK lid="d155l15" relType="AFTER" eventInstanceID="d155ei495" relatedToEventInstance="d155ei496" signalID="d155s23"/> 

# [[63]]
# <TLINK lid="d155l16" relType="AFTER" eventInstanceID="d155ei496" relatedToEventInstance="d155ei498" signalID="d155s26"/> 

# [[64]]
# <TLINK lid="d163l2" relType="AFTER" eventInstanceID="d163ei1991" relatedToEventInstance="d163ei1992" signalID="d163s3"/> 

# [[65]]
# <TLINK lid="d170l33" relType="AFTER" eventInstanceID="d170ei2069" relatedToEventInstance="d170ei2068" signalID="d170s480"/> 

# [[66]]
# <TLINK lid="d173l44" relType="AFTER" eventInstanceID="d173ei2475" relatedToEventInstance="d173ei2477" signalID="d173s2003"/> 

# [[67]]
# <TLINK lid="d182l6" relType="AFTER" timeID="d182t31" relatedToEventInstance="d182ei89" signalID="d182s16"/>



sort(table(extractIDfromAll(afterLinks,"signalID")))   
 # d101s119   d104s37    d105s3   d10s155   d10s161    d10s25    d10s97 d116s1993 
 #        1         1         1         1         1         1         1         1 
 # d119s374  d119s376   d119s96   d120s14  d120s209  d120s213   d123s40   d128s12 
 #        1         1         1         1         1         1         1         1 
 # d131s112   d137s25   d139s71   d141s16  d145s209  d145s215   d147s52   d155s23 
 #        1         1         1         1         1         1         1         1 
 #  d155s26    d15s57    d163s3  d170s480 d173s2003   d17s119   d182s16   d19s114 
 #        1         1         1         1         1         1         1         1 
 #   d1s306    d28s84    d30s48    d38s65    d41s32     d66s3    d66s82    d6s307 
 #        1         1         1         1         1         1         1         1 
 #   d6s323     d77s2    d78s16    d7s113  d80s1989  d80s2082    d88s48    d89s36 
 #        1         1         1         1         1         1         1         1 
 #   d93s27  d119s337   d151s19   d28s252  d118s325     d17s3     d4s66     d8s58 
 #        1         2         2         2         3         3         3         3


afterUniqueIDList = c("d101s119","d104s37","d105s3","d10s155","d10s161","d10s25","d10s97","d116s1993" ,"d119s374","d119s376","d119s96","d120s14","d120s209","d120s213","d123s40","d128s12","d131s112","d137s25","d139s71","d141s16","d145s209","d145s215","d147s52","d155s23","d155s26","d15s57","d163s3","d170s480","d173s2003","d17s119","d182s16","d19s114","d1s306","d28s84","d30s48","d38s65","d41s32","d66s3","d66s82","d6s307","d6s323","d77s2","d78s16","d7s113","d80s1989","d80s2082","d88s48","d89s36","d93s27","d119s337")


linkListHostCompReport(afterUniqueIDList,afterData)

# [1] ""
# [1] 1
# [1] "FUTURE NONE POS VERB NA STATE remain"
# [1] "NONE NONE POS NOUN NA OCCURRENCE spinoff"
# [1] "Courtaulds Chairman and Chief Executive Sir Christopher Hogg will remain in both posts at the surviving chemical company after the spinoff."
# [1] ""

# [1] 2
# [1] "PAST NONE POS VERB NA I_ACTION announced"
# [1] "PAST NONE POS VERB NA ASPECTUAL closed"
# [1] "Nashua announced the Reiss request after the market closed."
# [1] ""

# [1] 3
# [1] "PAST NONE POS VERB NA OCCURRENCE plummeted"
# [1] "PAST NONE POS VERB NA I_ACTION recommended"
# [1] "Crossland Savings Bank's stock plummetedafter management recommended a suspension of dividend payments on both its common and preferred stock because Crossland may not meet the new government capital criteria effective Dec. 7."
# [1] ""

# [1] 4
# [1] "PRESENT NONE POS ADJECTIVE NA OCCURRENCE discouraging"
# [1] "DURATION P22M true NONE 22 \nmonths"
# [1] "``Obviously, it is deeply discouraging for the family after 22 months, but there is no proof of life."
# [1] ""
# [1] 5
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE flee"
# [1] "NONE NONE POS NOUN NA OCCURRENCE coup\nd'etat"
# [1] "Nhek Bunchhay, who had been closely involvedin the search for Howes before having to flee the Cambodian capital after a coup d'etat last year, appeared confident he would find Howes' remains."
# [1] ""
# [1] 6
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE killed"
# [1] "PASTPART NONE POS VERB NA OCCURRENCE captured"
# [1] "InJanuary this year, British police officers who had been searching for Howes concluded he had probably been killed soon after being captured."
# [1] ""
# [1] 7
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE fall"
# [1] "NONE NONE POS NOUN NA OCCURRENCE defection"
# [1] "But the group began to fall apart in mid-1996 after the defection of one of its top leaders, Ieng Sary."
# [1] ""
# [1] 8
# [1] "PAST NONE POS VERB NA I_STATE achieved"
# [1] "DURATION PXQ false NONE several quarters"
# [1] "The company's strategy for keeping its computer products business profitable -- it recently achieved profitability after several quarters of losses -- calls for a narrow focus and a lid on expenses."
# [1] ""

# [1] 9
# [1] "PAST NONE POS VERB NA OCCURRENCE rocketed"
# [1] "PAST NONE POS VERB NA REPORTING said"
# [1] "Weisfield's rocketed 9 1/2 to 39 after the jewelry store operator said it is in preliminary discussions, with a party it would n't identify, regarding the possible acquisition of the company."
# [1] ""

# [1] 10
# [1] "PAST NONE POS VERB NA OCCURRENCE rose"
# [1] "PAST NONE POS VERB NA I_ACTION approved"
# [1] "Starpointe Savings Bankrose3 to 20 after the Federal Deposit Insurance Corp. approved Dime Savings Bank of New York's $21-a-share acquisition of Starpointe."
# [1] ""

# [1] 11
# [1] "PAST NONE POS VERB NA OCCURRENCE adopted"
# [1] "NONE NONE POS NOUN NA OCCURRENCE crash"
# [1] "That's largely because of defensive measures they adopted after the 1987 crash, when individual investors fled the market and trading activity dwindled."
# [1] ""
# [1] 12
# [1] "NONE NONE POS NOUN NA OCCURRENCE resilience"
# [1] "PAST NONE POS VERB NA OCCURRENCE firmed"
# [1] "It showed some early resilience after central bank support firmed sterling, but the weight of Wall Street late in London trading, and signs of further weakness in the British pound, proved a hefty load to bear."
# [1] ""
# [1] 13
# [1] "NONE NONE POS NOUN NA OCCURRENCE drop"
# [1] "NONE NONE POS NOUN NA OCCURRENCE resignation"
# [1] "London shares were depressed initially by overnight losses in New York and by the drop in sterling after Mr. Lawson's resignation."
# [1] ""

# [1] 14
# [1] "PAST NONE POS VERB NA OCCURRENCE recovered"
# [1] "PAST NONE POS VERB NA OCCURRENCE closed"
# [1] "New York stocks recovered some of their losses after the London market closed."
# [1] ""

# [1] 15
# [1] "PRESENT NONE POS ADJECTIVE NA STATE redeemable"
# [1] "DATE 1994 false NONE the end of 1994"
# [1] "The shares are redeemable after the end of 1994."
# [1] ""

# [1] 16
# [1] "NONE NONE POS NOUN NA STATE rate"
# [1] "NONE NONE POS NOUN NA OCCURRENCE restructuring"
# [1] "In addition, the effective interest rate on the $410 million of total remaining bank debt after the restructuring is 10.66%."
# [1] ""

# [1] 17
# [1] "PAST NONE POS VERB NA OCCURRENCE strengthened"
# [1] "NONE NONE POS NOUN NA REPORTING announcing"
# [1] "--- Nashua strengthened its poison-pill plan after announcing a Dutch firm is seeking to buy up to 25% of the New Hampshire copier company."
# [1] ""
# [1] 18
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE buy"
# [1] "DATE 1990-01-01 false NONE jan. 1, 1990"
# [1] "In addition, the bank has an option to buy a 30.84% stake in BIP from Societe Generale after Jan. 1, 1990 at 1,015 francs a share."
# [1] ""
# [1] 19
# [1] "PAST NONE POS VERB NA OCCURRENCE retained"
# [1] "PRESPART NONE POS VERB NA OCCURRENCE selling"
# [1] "The government retained the single share after selling its stake in Jaguar in 1984 -- part of a nationalistic practice of protecting former government-owned enterprises to deflect criticism of privatization."
# [1] ""
# [1] 20
# [1] "FUTURE NONE POS VERB NA STATE have"
# [1] "NONE NONE POS NOUN NA OCCURRENCE split"
# [1] "After the split, the company will have more than 4.7 million shares outstanding."
# [1] ""

# [1] 21
# [1] "PAST NONE POS VERB NA OCCURRENCE issued"
# [1] "PAST NONE POS VERB NA I_ACTION asked"
# [1] "According to individuals familiar with Mr. Antar's case, prosecutors issued their warning this week after one of Mr. Antar's attorneys asked whether legal fees might be subject to seizure."
# [1] ""

# [1] 22
# [1] "NONE NONE POS VERB can OCCURRENCE taken"
# [1] "PRESENT NONE POS VERB NA OCCURRENCE paid"
# [1] "Therefore, they said, the money can be taken from the lawyers even after they are paid."
# [1] ""
# [1] 23
# [1] "PAST NONE POS VERB NA OCCURRENCE lowered"
# [1] "NONE NONE POS NOUN NA OCCURRENCE extending"
# [1] "Then, after extending its offer four times waiting for a congressional tax ruling, IMA early this month lowered its offer to $26.50 a share amid turbulence in the junk bond market."
# [1] ""
# [1] 24
# [1] "PAST NONE POS VERB NA OCCURRENCE pulled"
# [1] "NONE NONE POS NOUN NA REPORTING reporting"
# [1] "Compaq Computer nose-dived $8.625 a share, to $100, and pulled other technology issues lower after reporting lower-than-expected earnings after the stock market closed Wednesday."
# [1] ""
# [1] 25
# [1] "NONE NONE POS NOUN NA REPORTING reporting"
# [1] "PAST NONE POS VERB NA OCCURRENCE closed"
# [1] "Compaq Computer nose-dived $8.625 a share, to $100, and pulled other technology issues lower after reporting lower-than-expected earnings after the stock market closed Wednesday."
# [1] ""
# [1] 26
# [1] "PAST NONE POS VERB NA OCCURRENCE issued"
# [1] "NONE NONE POS NOUN NA OCCURRENCE talks"
# [1] "In their joint statement issued after the talks, Yeltsin and Kuchma called for the fastest possible ratification of the treaty, saying it would create a ``strong legal foundation'' for bilateral ties and help stability in Europe."
# [1] ""
# [1] 27
# [1] "PRESPART NONE POS VERB NA OCCURRENCE snapping"
# [1] "NONE NONE POS NOUN NA OCCURRENCE loss"
# [1] "Sun Microsystems Inc., snapping back to profitability after its first quarterly loss as a public firm, said it earned $5.2 million, or seven cents a share, in the fiscal first quarter."
# [1] ""
# [1] 28
# [1] "FUTURE NONE POS VERB NA OCCURRENCE named"
# [1] "PRESENT PERFECTIVE POS VERB NA OCCURRENCE sold"
# [1] "Mr. Nadeausaid he intends to remain Provigo's chief executive only until the non-food businesses are sold, after a which a new chief executive will be named."
# [1] ""
# [1] 29
# [1] "PAST NONE POS VERB NA REPORTING announced"
# [1] "NONE NONE POS ADJECTIVE NA OCCURRENCE close"
# [1] "Columbiaannounced the results after the close of the stock market."
# [1] ""
# [1] 30
# [1] "PASTPART NONE POS VERB NA OCCURRENCE imposed"
# [1] "NONE NONE POS NOUN NA OCCURRENCE invasion"
# [1] "The Security Council has said it will not lift the sweeping sanctions imposed on Iraq after its 1990 invasion of Kuwait until the U.N. inspectors certify that Baghdad has eliminated its weapons of mass destruction."
# [1] ""
# [1] 31
# [1] "DURATION P90D false NONE 90 days"
# [1] "NONE NONE POS NOUN NA OCCURRENCE issue"
# [1] "The warrants may be exercised until 90 days after their issue date."
# [1] ""

# [1] 32
# [1] "PAST NONE POS VERB NA OCCURRENCE hospitalized"
# [1] "PAST NONE POS VERB NA OCCURRENCE landed"
# [1] "An elderly Catholic man was hospitalized from cuts after a Protestant gasoline bomb landed in his back yard."
# [1] ""

# [1] 33
# [1] "PRESENT PROGRESSIVE POS VERB NA OCCURRENCE talking"
# [1] "DURATION P10Y false NONE ten \n years"
# [1] "And at the big brokerage houses, after ten years of boom, they're talking about layoffs."
# [1] ""
# [1] 34
# [1] "PRESENT PERFECTIVE_PROGRESSIVE POS VERB NA OCCURRENCE creating"
# [1] "NONE NONE POS NOUN NA OCCURRENCE averaging"
# [1] "After accounting for a small downward revision Friday to December's figures, the economy has been creating jobs at a rate of 358,000 a month for the last four months _ and 381,000 over the last three months _ after averaging 242,000 for the first nine months of 1997."
# [1] ""
# [1] 35
# [1] "PAST NONE POS VERB NA OCCURRENCE appeared"
# [1] "PAST PERFECTIVE POS VERB NA ASPECTUAL finished"
# [1] "The men appeared in the store at 469 Vermont St. in Brownsville around 7:15 p.m., after the victim, Linda Sanders, 35, had finished her cleaning and was waiting for her clothes to dry, detectives said."
# [1] ""

********
# [1] 36
# [1] "PAST PERFECTIVE POS VERB NA I_STATE expected"
# [1] "PAST NONE POS VERB NA REPORTING said"
# [1] "The move had been widely expected after northern Ireland police said they believe the IRA was behind two killings in Belfast last week."
# [1] ""

# [1] 37
# [1] "PAST NONE POS VERB NA OCCURRENCE met"
# [1] "PRESPART NONE POS VERB NA OCCURRENCE holding"
# [1] "; Another highly placed source said the president's son met with Sununu last week after holding a series of conversations about the structure of the White House staff and of the campaign with other Bush loyalists and GOP activists."
# [1] ""
# [1] 38
# [1] "PAST NONE POS VERB NA OCCURRENCE merged"
# [1] "NONE NONE POS NOUN NA OCCURRENCE meeting"
# [1] "A.L. Williams Corp. was merged into Primerica Corp., New York, after a special meeting of Williams shareholders cleared the transaction, the companies said."
# [1] ""
# [1] 39
# [1] "INFINITIVE NONE POS VERB NA OCCURRENCE delisted"
# [1] "NONE NONE POS NOUN NA OCCURRENCE close"
# [1] "Williams shares, which were to be delisted from the New York Stock Exchange after the close of composite trading yesterday, closed at $23.25, off 12.5 cents."
# [1] ""
# [1] 40
# [1] "PAST NONE POS VERB NA REPORTING said"
# [1] "NONE NONE POS NOUN NA OCCURRENCE meeting"
# [1] "After a two-hour meeting at his Kennebunkport home with King Hussein of Jordan, Bush said, ``I did not come away with any feeling of hope'' that Iraq would withdraw its army from Kuwait."
# [1] ""
# [1] 41
# [1] "FUTURE NONE POS VERB NA OCCURRENCE receive"
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE pushed"
# [1] "``We continue to pray and pray hard to God so that there will be no confrontation whereby you will receive thousands of Americans wrapped in sad coffins after you had pushed them into a dark tunnel,'' Saddam said."
# [1] ""

# [1] 42
# [1] "PAST NONE POS VERB NA OCCURRENCE raised"
# [1] "PAST NONE POS VERB NA REPORTING said"
# [1] "Ratners Group PLC, a fast-growing, acquisition-minded London-based jeweler, raised its price for Seattle-based specialty jeweler Weisfield's Inc. to $57.50 a share, or $62.1 million, from $50 a share, or $55 million, after another concern said it would be prepared to outbid Ratners's initial offer."
# [1] ""


# [1] 43
# [1] "PRESENT NONE POS VERB NA I_STATE expects"
# [1] "NONE NONE POS NOUN NA OCCURRENCE charges"
# [1] "The thrift said that \"after these charges and assuming no dramatic fluctuation in interest rates, the association expects to achieve near record earnings in 1990.\""
# [1] ""

# [1] 44
# [1] "PAST NONE POS VERB NA I_ACTION promised"
# [1] "PAST NONE POS VERB NA OCCURRENCE voted"
# [1] "Prime Minister John Howard, a monarchist himself, promised to put the question to a national referendum next year after convention delegates voted 89-52 for a republic, with 11 abstentions."
# [1] ""

# [1] 45
# [1] "FUTURE NONE POS ADJECTIVE NA STATE available"
# [1] "NONE NONE POS NOUN NA OCCURRENCE payments"
# [1] "In addition, they will receive stock in the reorganized company, which will be named Ranger Industries Inc. After these payments, about $225,000 will be available for the 20 million common shares outstanding."
# [1] ""

# [1] 46
# [1] "PAST NONE POS VERB NA OCCURRENCE hit"
# [1] "PAST NONE POS VERB NA OCCURRENCE unveiled"
# [1] "The Avon, Conn., company's stock hit a high in 1983 after it unveiled its Adam home computer, but the product was plagued with glitches and the company's fortunes plunged."
# [1] ""

# [1] 47
# [1] "NONE NONE POS NOUN NA OCCURRENCE gain"
# [1] "DATE 1989-Q2 true NONE a flat second quarter"
# [1] "Aftera flat second quartertied largely to lower newsprint earnings, Kimberly-Clark attributed the gain to improved results in its consumer businesses in North America, Brazil and Korea."
# [1] ""
# [1] 48
# [1] "FUTURE NONE NEG VERB NA OCCURRENCE hold"
# [1] "NONE NONE POS NOUN NA OCCURRENCE restructuring"
# [1] "Ocean Drillingsaid it wo n't hold any shares of the new company after the restructuring."
# [1] ""
# [1] 49
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE reduced"
# [1] "NONE NONE POS NOUN NA OCCURRENCE moves"
# [1] "The company said its junk-bond portfolio after these moves had been reduced to less than 1% of assets."
# [1] ""
# [1] 50
# [1] "PAST PERFECTIVE POS VERB NA OCCURRENCE fallen"
# [1] "DATE 1989-10-12 true NONE oct. 12"
# [1] "Eight trading daysafterOct. 12, the daybefore the stock market plunge, for instance, the Nasdaq Composite had fallen 4.3%, compared with 3.3% for the SampP 500, 3.5% for the New York Stock Exchange Composite Index and 3.6% for the industrial average."




# EXCLUDES LINKS THAT ARE TRIGGERED BY SIGNALS THAT TRIGGER OTHER LINKS:
# (there are 7 of these, hence 56 tokens of "after")

#              pos.y
# pos.x         VERB 	NOUN 	ADJECTIVE 	DATE 	DURATION	total
#   VERB        18	18		1			1		2			40
#   NOUN        2		2		0			1					5
#   ADJECTIVE   		1					1		1			3
#   DURATION			1										1		

#   Total 	  20	22		1			3		3			49



# Primary types of those excluded:

# 	Verb Verb 	2
# 	Noun Verb 	1
# 	Adjective Verb 	1
# 	Verb Noun	2	

# 	Verb date 	1

# So:

#              pos.y
# pos.x         VERB 	NOUN 	ADJECTIVE 	DATE 	DURATION	total
#   VERB        20	20		1			2		2			45
#   NOUN        3		2		0			1					6
#   ADJECTIVE   1		1					1		1			4
#   DURATION			1										1		

#   Total 	  24	24		1			4		3			56




# VERB, VERB


# 	OCCURRENCE, OCCURRENCE

# 		[1] 6
# 		[1] "PAST PERFECTIVE POS VERB NA OCCURRENCE killed"
# 		[1] "PASTPART NONE POS VERB NA OCCURRENCE captured"
# 		[1] "InJanuary this year, British police officers who had been searching for Howes concluded he had probably been killed soon after being captured."
# 		[1] ""
# 		[1] 14
# 		[1] "PAST NONE POS VERB NA OCCURRENCE recovered"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE closed"
# 		[1] "New York stocks recovered some of their losses after the London market closed."
# 		[1] ""
# 		[1] 19
# 		[1] "PAST NONE POS VERB NA OCCURRENCE retained"
# 		[1] "PRESPART NONE POS VERB NA OCCURRENCE selling"
# 		[1] "The government retained the single share after selling its stake in Jaguar in 1984 -- part of a nationalistic practice of protecting former government-owned enterprises to deflect criticism of privatization."
# 		[1] ""
# 		[1] 22
# 		[1] "NONE NONE POS VERB can OCCURRENCE taken"
# 		[1] "PRESENT NONE POS VERB NA OCCURRENCE paid"
# 		[1] "Therefore, they said, the money can be taken from the lawyers even after they are paid."
# 		[1] ""
# 		[1] 28
# 		[1] "FUTURE NONE POS VERB NA OCCURRENCE named"
# 		[1] "PRESENT PERFECTIVE POS VERB NA OCCURRENCE sold"
# 		[1] "Mr. Nadeausaid he intends to remain Provigo's chief executive only until the non-food businesses are sold, after a which a new chief executive will be named."
# 		[1] ""
# 		[1] 32
# 		[1] "PAST NONE POS VERB NA OCCURRENCE hospitalized"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE landed"
# 		[1] "An elderly Catholic man was hospitalized from cuts after a Protestant gasoline bomb landed in his back yard."
# 		[1] ""
# 		[1] 37
# 		[1] "PAST NONE POS VERB NA OCCURRENCE met"
# 		[1] "PRESPART NONE POS VERB NA OCCURRENCE holding"
# 		[1] "; Another highly placed source said the president's son met with Sununu last week after holding a series of conversations about the structure of the White House staff and of the campaign with other Bush loyalists and GOP activists."
# 		[1] ""
# 		[1] 41
# 		[1] "FUTURE NONE POS VERB NA OCCURRENCE receive"
# 		[1] "PAST PERFECTIVE POS VERB NA OCCURRENCE pushed"
# 		[1] "``We continue to pray and pray hard to God so that there will be no confrontation whereby you will receive thousands of Americans wrapped in sad coffins after you had pushed them into a dark tunnel,'' Saddam said."
# 		[1] ""
# 		[1] 46
# 		[1] "PAST NONE POS VERB NA OCCURRENCE hit"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE unveiled"
# 		[1] "The Avon, Conn., company's stock hit a high in 1983 after it unveiled its Adam home computer, but the product was plagued with glitches and the company's fortunes plunged."
# 		[1] ""

# 	OCCURRENCE, REPORTING

# 		[1] 9
# 		[1] "PAST NONE POS VERB NA OCCURRENCE rocketed"
# 		[1] "PAST NONE POS VERB NA REPORTING said"
# 		[1] "Weisfield's rocketed 9 1/2 to 39 after the jewelry store operator said it is in preliminary discussions, with a party it would n't identify, regarding the possible acquisition of the company."
# 		[1] ""
# 		[1] 42
# 		[1] "PAST NONE POS VERB NA OCCURRENCE raised"
# 		[1] "PAST NONE POS VERB NA REPORTING said"
# 		[1] "Ratners Group PLC, a fast-growing, acquisition-minded London-based jeweler, raised its price for Seattle-based specialty jeweler Weisfield's Inc. to $57.50 a share, or $62.1 million, from $50 a share, or $55 million, after another concern said it would be prepared to outbid Ratners's initial offer."
# 		[1] ""

# 	OCCURRENCE, IACTION

# 		[1] 3
# 		[1] "PAST NONE POS VERB NA OCCURRENCE plummeted"
# 		[1] "PAST NONE POS VERB NA I_ACTION recommended"
# 		[1] "Crossland Savings Bank's stock plummetedafter management recommended a suspension of dividend payments on both its common and preferred stock because Crossland may not meet the new government capital criteria effective Dec. 7."
# 		[1] ""
# 		[1] 10
# 		[1] "PAST NONE POS VERB NA OCCURRENCE rose"
# 		[1] "PAST NONE POS VERB NA I_ACTION approved"
# 		[1] "Starpointe Savings Bankrose3 to 20 after the Federal Deposit Insurance Corp. approved Dime Savings Bank of New York's $21-a-share acquisition of Starpointe."
# 		[1] ""
# 		[1] 21
# 		[1] "PAST NONE POS VERB NA OCCURRENCE issued"
# 		[1] "PAST NONE POS VERB NA I_ACTION asked"
# 		[1] "According to individuals familiar with Mr. Antar's case, prosecutors issued their warning this week after one of Mr. Antar's attorneys asked whether legal fees might be subject to seizure."
# 		[1] ""

# 	OCCURRENCE ASPECTUAL

# 		[1] 35
# 		[1] "PAST NONE POS VERB NA OCCURRENCE appeared"
# 		[1] "PAST PERFECTIVE POS VERB NA ASPECTUAL finished"
# 		[1] "The men appeared in the store at 469 Vermont St. in Brownsville around 7:15 p.m., after the victim, Linda Sanders, 35, had finished her cleaning and was waiting for her clothes to dry, detectives said."
# 		[1] ""

# 	IACTION OCCURRENCE

# 		[1] 44
# 		[1] "PAST NONE POS VERB NA I_ACTION promised"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE voted"
# 		[1] "Prime Minister John Howard, a monarchist himself, promised to put the question to a national referendum next year after convention delegates voted 89-52 for a republic, with 11 abstentions."

# 	IACTION ASPECTUAL

# 		[1] 2
# 		[1] "PAST NONE POS VERB NA I_ACTION announced"
# 		[1] "PAST NONE POS VERB NA ASPECTUAL closed"
# 		[1] "Nashuaannounced the Reiss request after the market closed."
# 		[1] ""

# 	ISTATE REPORTING

# 		[1] 36
# 		[1] "PAST PERFECTIVE POS VERB NA I_STATE expected"
# 		[1] "PAST NONE POS VERB NA REPORTING said"
# 		[1] "The move had been widely expected after northern Ireland police said they believe the IRA was behind two killings in Belfast last week."
# 		[1] ""






# VERB, NOUN

# 	OCCURRENCE OCCURRENCE

# 		[1] 5
# 		[1] "INFINITIVE NONE POS VERB NA OCCURRENCE flee"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE coup\nd'etat"
# 		[1] "Nhek Bunchhay, who had been closely involvedin the search for Howes before having to flee the Cambodian capital after a coup d'etat last year, appeared confident he would find Howes' remains."
# 		[1] ""
# 		[1] 7
# 		[1] "INFINITIVE NONE POS VERB NA OCCURRENCE fall"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE defection"
# 		[1] "But the group began to fall apart in mid-1996 after the defection of one of its top leaders, Ieng Sary."
# 		[1] ""
# 		[1] 11
# 		[1] "PAST NONE POS VERB NA OCCURRENCE adopted"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE crash"
# 		[1] "That's largely because of defensive measures they adopted after the 1987 crash, when individual investors fled the market and trading activity dwindled."
# 		[1] ""
# 		[1] 23
# 		[1] "PAST NONE POS VERB NA OCCURRENCE lowered"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE extending"
# 		[1] "Then, after extending its offer four times waiting for a congressional tax ruling, IMA early this month lowered its offer to $26.50 a share amid turbulence in the junk bond market."
# 		[1] ""	
# 		[1] 26
# 		[1] "PAST NONE POS VERB NA OCCURRENCE issued"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE talks"
# 		[1] "In their joint statement issued after the talks, Yeltsin and Kuchma called for the fastest possible ratification of the treaty, saying it would create a ``strong legal foundation'' for bilateral ties and help stability in Europe."
# 		[1] ""
# 		[1] 27
# 		[1] "PRESPART NONE POS VERB NA OCCURRENCE snapping"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE loss"
# 		[1] "Sun Microsystems Inc., snapping back to profitability after its first quarterly loss as a public firm, said it earned $5.2 million, or seven cents a share, in the fiscal first quarter."
# 		[1] ""
# 		[1] 30
# 		[1] "PASTPART NONE POS VERB NA OCCURRENCE imposed"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE invasion"
# 		[1] "The Security Council has said it will not lift the sweeping sanctions imposed on Iraq after its 1990 invasion of Kuwait until the U.N. inspectors certify that Baghdad has eliminated its weapons of mass destruction."
# 		[1] ""
# 		[1] 34
# 		[1] "PRESENT PERFECTIVE_PROGRESSIVE POS VERB NA OCCURRENCE creating"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE averaging"
# 		[1] "After accounting for a small downward revision Friday to December's figures, the economy has been creating jobs at a rate of 358,000 a month for the last four months _ and 381,000 over the last three months _ after averaging 242,000 for the first nine months of 1997."
# 		[1] ""
# 		[1] 38
# 		[1] "PAST NONE POS VERB NA OCCURRENCE merged"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE meeting"
# 		[1] "A.L. Williams Corp. was merged into Primerica Corp., New York, after a special meeting of Williams shareholders cleared the transaction, the companies said."
# 		[1] ""
# 		[1] 39
# 		[1] "INFINITIVE NONE POS VERB NA OCCURRENCE delisted"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE close"
# 		[1] "Williams shares, which were to be delisted from the New York Stock Exchange after the close of composite trading yesterday, closed at $23.25, off 12.5 cents."
# 		[1] ""
# 		[1] 48
# 		[1] "FUTURE NONE NEG VERB NA OCCURRENCE hold"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE restructuring"
# 		[1] "Ocean Drillingsaid it won't hold any shares of the new company after the restructuring."
# 		[1] ""
# 		[1] 49
# 		[1] "PAST PERFECTIVE POS VERB NA OCCURRENCE reduced"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE moves"
# 		[1] "The company said its junk-bond portfolio after these moves had been reduced to less than 1% of assets."
# 		[1] ""

# 	OCCURRENCE REPORTING

# 		[1] 17
# 		[1] "PAST NONE POS VERB NA OCCURRENCE strengthened"
# 		[1] "NONE NONE POS NOUN NA REPORTING announcing"
# 		[1] "--- Nashua strengthened its poison-pill plan after announcing a Dutch firm is seeking to buy up to 25% of the New Hampshire copier company."
# 		[1] ""
# 		[1] 24
# 		[1] "PAST NONE POS VERB NA OCCURRENCE pulled"
# 		[1] "NONE NONE POS NOUN NA REPORTING reporting"
# 		[1] "Compaq Computer nose-dived $8.625 a share, to $100, and pulled other technology issues lower after reporting lower-than-expected earnings after the stock market closed Wednesday."
# 		[1] ""

# 	REPORTING OCCURRENCE

# 		[1] 40
# 		[1] "PAST NONE POS VERB NA REPORTING said"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE meeting"
# 		[1] "After a two-hour meeting at his Kennebunkport home with King Hussein of Jordan, Bush said, ``I did not come away with any feeling of hope'' that Iraq would withdraw its army from Kuwait."
# 		[1] ""

# 	STATE OCCURRENCE

# 		[1] 1
# 		[1] "FUTURE NONE POS VERB NA STATE remain"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE spinoff"
# 		[1] "Courtaulds Chairman and Chief Executive Sir Christopher Hogg will remain in both posts at the surviving chemical company after the spinoff."
# 		[1] ""	
# 		[1] 20
# 		[1] "FUTURE NONE POS VERB NA STATE have"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE split"
# 		[1] "After the split, the company will have more than 4.7 million shares outstanding."
# 		[1] ""

# 	ISTATE OCCURRENCE

# 		[1] 43
# 		[1] "PRESENT NONE POS VERB NA I_STATE expects"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE charges"
# 		[1] "The thrift said that \"after these charges and assuming no dramatic fluctuation in interest rates, the association expects to achieve near record earnings in 1990.\""



# VERB, ADJECTIVE: 

# 	REPORTING-OCCURRENCE
	
# 		[1] 29
# 		[1] "PAST NONE POS VERB NA REPORTING announced"
# 		[1] "NONE NONE POS ADJECTIVE NA OCCURRENCE close"
# 		[1] "Columbiaannounced the results after the close of the stock market."
# 		[1] ""


# VERB, DATE: 

# 	OCCURRENCE DATE
	
# 		[1] 18
# 		[1] "INFINITIVE NONE POS VERB NA OCCURRENCE buy"
# 		[1] "DATE 1990-01-01 false NONE jan. 1, 1990"
# 		[1] "In addition, the bank has an option to buy a 30.84% stake in BIP from Societe Generale after Jan. 1, 1990 at 1,015 francs a share."
# 		[1] ""

# VERB, DURATION

# 	OCCURRENCE DURATION
# 		[1] 33
# 		[1] "PRESENT PROGRESSIVE POS VERB NA OCCURRENCE talking"
# 		[1] "DURATION P10Y false NONE ten \n years"
# 		[1] "And at the big brokerage houses, after ten years of boom, they're talking about layoffs."
# 		[1] ""
# 	ISTATE DURATION
# 		[1] 8
# 		[1] "PAST NONE POS VERB NA I_STATE achieved"
# 		[1] "DURATION PXQ false NONE several quarters"
# 		[1] "The company's strategy for keeping its computer products business profitable -- it recently achieved profitability after several quarters of losses -- calls for a narrow focus and a lid on expenses."
# 		[1] ""










# NOUN, VERB

# 	OCCURRENCE OCCURRENCE
# 		[1] 12
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE resilience"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE firmed"
# 		[1] "It showed some early resilience after central bank support firmed sterling, but the weight of Wall Street late in London trading, and signs of further weakness in the British pound, proved a hefty load to bear."
# 		[1] ""

# 	REPORTING OCCURRENCE
# 		[1] 25
# 		[1] "NONE NONE POS NOUN NA REPORTING reporting"
# 		[1] "PAST NONE POS VERB NA OCCURRENCE closed"
# 		[1] "Compaq Computer nose-dived $8.625 a share, to $100, and pulled other technology issues lower after reporting lower-than-expected earnings after the stock market closed Wednesday."
# 		[1] ""


# NOUN, NOUN

# 	OCCURRENCE OCCURRENCE
# 		[1] 13
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE drop"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE resignation"
# 		[1] "London shares were depressed initially by overnight losses in New York and by the drop in sterling after Mr. Lawson's resignation."
# 		[1] ""

# 	STATE OCCURRENCE
# 		[1] 16
# 		[1] "NONE NONE POS NOUN NA STATE rate"
# 		[1] "NONE NONE POS NOUN NA OCCURRENCE restructuring"
# 		[1] "In addition, the effective interest rate on the $410 million of total remaining bank debt after the restructuring is 10.66%."
# 		[1] ""

# NOUN, DATE : OCCURRENCE DATE

# 	[1] 47
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE gain"
# 	[1] "DATE 1989-Q2 true NONE a flat second quarter"
# 	[1] "Aftera flat second quartertied largely to lower newsprint earnings, Kimberly-Clark attributed the gain to improved results in its consumer businesses in North America, Brazil and Korea."
# 	[1] ""





# ADJECTIVE, NOUN : STATE OCCURRENCE

# 	[1] 45
# 	[1] "FUTURE NONE POS ADJECTIVE NA STATE available"
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE payments"
# 	[1] "In addition, they will receive stock in the reorganized company, which will be named Ranger Industries Inc. After these payments, about $225,000 will be available for the 20 million common shares outstanding."
# 	[1] ""

# ADJECTIVE, DATE : STATE DATE

# 	[1] 15
# 	[1] "PRESENT NONE POS ADJECTIVE NA STATE redeemable"
# 	[1] "DATE 1994 false NONE the end of 1994"
# 	[1] "The shares are redeemable after the end of 1994."
# 	[1] ""

# ADJECTIVE, DURATION : OCCURRENCE DURATION

# 	[1] 4
# 	[1] "PRESENT NONE POS ADJECTIVE NA OCCURRENCE discouraging"
# 	[1] "DURATION P22M true NONE 22 months"
# 	[1] "``Obviously, it is deeply discouraging for the family after 22 months, but there is no proof of life."
# 	[1] ""



# DURATION, NOUN : DURATION OCCURRENCE

# 	[1] 31
# 	[1] "DURATION P90D false NONE 90 days"
# 	[1] "NONE NONE POS NOUN NA OCCURRENCE issue"
# 	[1] "The warrants may be exercised until 90 days after their issue date."
# 	[1] ""









# MULTIPLE TLINKS


# d119s337 	d151s19   d28s252  	d118s325  	d17s3     d4s66     d8s58 
# 2        	2         2         3         	3         3         3


# EVENT EVENT 	8
# 	PAST PAST 		2
# 	NONE PAST 		1
# 	PRESENT PAST 	1
# 	PRESENT NONE	2
# 	FUTURE NONE		1
# 	NONE NONE		1

# EVENT TIME		10
# 	PAST DURATION 	7
# 	NONE DURATION	1
# 	PRESENT DURATION	1	
# 	PAST DATE 		1


#              pos.y
# pos.x         VERB 	NOUN 	ADJECTIVE 	DATE 	DURATION	total
#   VERB        18	18		1			1		2			40
#   NOUN        2		2		0			1					5
#   ADJECTIVE   		1					1		1			3
#   DURATION			1										1		

#   Total 	  20	22		1			3		3			49

#   49 + 8 = 57
#   57 + 10 = 67



multiAfterTLinks = c("d119s337","d151s19","d28s252","d118s325","d17s3","d4s66","d8s58") 


getNodesbyAttrValList(afterLinks,"signalID",multiAfterTLinks)



# EVENT, EVENT; EVENT TIME; EVENT TIME

# 	OCCURRENCE, OCCURRENCE; OCCURRENCE, DURATION; OCCURRENCE, DURATION


# 		"It wasn't until twenty years after the first astronauts were chosen that NASA finally included six women, and they were all scientists, not pilots."

# 			<TLINK lid="d4l6" relType="AFTER" eventInstanceID="d4ei266"  relatedToEventInstance="d4ei265" signalID="d4s66"/> 

# 				<MAKEINSTANCE eventID="d4e7" eiid="d4ei266" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
# 				<EVENT eid="d4e7" class="OCCURRENCE" word_form="included">included</EVENT>

# 				<MAKEINSTANCE eventID="d4e6" eiid="d4ei265" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
# 				<EVENT eid="d4e6" class="OCCURRENCE" word_form="chosen">chosen</EVENT> 

# 			<TLINK lid="d4l25" relType="BEGINS" eventInstanceID="d4ei265" relatedToTime="d4t34" signalID="d4s66"/> 

# 				<MAKEINSTANCE eventID="d4e6" eiid="d4ei265" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>

# 				<EVENT eid="d4e6" class="OCCURRENCE" word_form="chosen">chosen</EVENT> 

# 				<TIMEX3 tid="d4t34" type="DURATION" value="P20Y" temporalFunction="false" functionInDocument="NONE" word_form="twenty years"><CARDINAL>twenty</CARDINAL> years</TIMEX3> 

# 			<TLINK lid="d4l26" relType="ENDS" eventInstanceID="d4ei266" relatedToTime="d4t34" signalID="d4s66"/> 

# 				<MAKEINSTANCE eventID="d4e7" eiid="d4ei266" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 

# 				<EVENT eid="d4e7" class="OCCURRENCE" word_form="included">included</EVENT>

# 				<TIMEX3 tid="d4t34" type="DURATION" value="P20Y" temporalFunction="false" functionInDocument="NONE" word_form="twenty years"><CARDINAL>twenty</CARDINAL> years</TIMEX3> 

# 	OCCURRENCE, ASPECTUAL; ASPECTUAL DURATION; OCCURRENCE DURATION

# 		"This move comes barely a month after Qantas suspended a number of services between Australia, Indonesia, Thailand and Malaysia in the wake of the Asian economic crisis."

# 			<TLINK lid="d8l5" relType="AFTER" eventInstanceID="d8ei325" relatedToEventInstance="d8ei326" signalID="d8s58" origin="USER"/> 

# 				<MAKEINSTANCE eventID="d8e28" eiid="d8ei325" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
# 				<EVENT eid="d8e28" class="OCCURRENCE" stem="move" word_form="move">move</EVENT> 

# 				<MAKEINSTANCE eventID="d8e5" eiid="d8ei326" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d8e5" class="ASPECTUAL" stem="suspend" word_form="suspended">suspended</EVENT>  

# 			<TLINK lid="d8l27" relType="BEGINS" eventInstanceID="d8ei326" relatedToTime="d8t44" signalID="d8s58" origin="USER"/> 

# 				<MAKEINSTANCE eventID="d8e5" eiid="d8ei326" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d8e5" class="ASPECTUAL" stem="suspend" word_form="suspended">suspended</EVENT> 

# 				<TIMEX3 tid="d8t44" type="DURATION" value="P1M" temporalFunction="false" functionInDocument="NONE" word_form="a month">a month</TIMEX3>

# 			<TLINK lid="d8l28" relType="ENDS" eventInstanceID="d8ei325" relatedToTime="d8t44" signalID="d8s58" origin="USER"/> 

# 				<MAKEINSTANCE eventID="d8e28" eiid="d8ei325" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
# 				<EVENT eid="d8e28" class="OCCURRENCE" stem="move" word_form="move">move</EVENT>

# 				<TIMEX3 tid="d8t44" type="DURATION" value="P1M" temporalFunction="false" functionInDocument="NONE" word_form="a month">a month</TIMEX3>

# 	ASPECTUAL OCCURRENCE; OCCURRENCE DURATION; ASPECTUAL DURATION

# 		"BAGHDAD, Iraq (AP) _ An American leader of a U.N. weapons inspection team resumed work in Iraq Friday, nearly two months after his team was effectively blocked."

# 			<TLINK lid="d17l2" relType="AFTER" eventInstanceID="d17ei1233" relatedToEventInstance="d17ei1235" signalID="d17s3"/> 

# 				<MAKEINSTANCE eventID="d17e1" eiid="d17ei1233" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 
# 				<EVENT eid="d17e1" class="ASPECTUAL" word_form="resumed">resumed</EVENT> 

# 				<MAKEINSTANCE eventID="d17e4" eiid="d17ei1235" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d17e4" class="OCCURRENCE" word_form="blocked">blocked</EVENT> 


# 			<TLINK lid="d17l32" relType="BEGINS" eventInstanceID="d17ei1235" relatedToTime="d17t139" signalID="d17s3"/> 

# 				<MAKEINSTANCE eventID="d17e4" eiid="d17ei1235" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d17e4" class="OCCURRENCE" word_form="blocked">blocked</EVENT> 

# 				<TIMEX3 tid="d17t139" type="DURATION" value="P2M" mod="APPROX" temporalFunction="true" functionInDocument="NONE" endPoint="d17t138" word_form="nearly two months">nearly <CARDINAL>two</CARDINAL> months</TIMEX3> 

# 			<TLINK lid="d17l33" relType="ENDS" eventInstanceID="d17ei1233" relatedToTime="d17t139" signalID="d17s3"/> 

# 				<MAKEINSTANCE eventID="d17e1" eiid="d17ei1233" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/> 

# 				<EVENT eid="d17e1" class="ASPECTUAL" word_form="resumed">resumed</EVENT> 

# 				<TIMEX3 tid="d17t139" type="DURATION" value="P2M" mod="APPROX" temporalFunction="true" functionInDocument="NONE" endPoint="d17t138" word_form="nearly two months">nearly <CARDINAL>two</CARDINAL> months</TIMEX3> 


# 	STATE IACTION; IACTION DURATION; STATE DURATION

# 		"To mollify shareholders concerned about the long-term value of the company under the BellSouth-LIN agreement, BellSouth also agreed to pay as much as $10 a share, or $540 million, if, after five years, the trading value of the new cellular company isn't as high as the value that shareholders would have realized from the McCaw offer."

# 			<TLINK lid="d118l62" relType="AFTER" eventInstanceID="d118ei2659" relatedToEventInstance="d118ei2657" signalID="d118s325"/> 

# 				<MAKEINSTANCE eventID="d118e327" eiid="d118ei2659" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
# 				<EVENT eid="d118e327" class="STATE" word_form="high">high</EVENT> 

# 				<MAKEINSTANCE eventID="d118e147" eiid="d118ei2657" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d118e147" class="I_ACTION" word_form="agreed">agreed</EVENT> 

# 			<TLINK lid="d118l93" relType="BEGINS" eventInstanceID="d118ei2657" relatedToTime="d118t326" signalID="d118s325"/> 

# 				<MAKEINSTANCE eventID="d118e147" eiid="d118ei2657" tense="PAST" aspect="NONE" polarity="POS" pos="VERB"/>
# 				<EVENT eid="d118e147" class="I_ACTION" word_form="agreed">agreed</EVENT>

# 				<TIMEX3 tid="d118t326" type="DURATION" value="P5Y" temporalFunction="false" functionInDocument="NONE" word_form="five years"><CARDINAL>five</CARDINAL> years</TIMEX3>


# 			<TLINK lid="d118l94" relType="ENDS" eventInstanceID="d118ei2659" relatedToTime="d118t326" signalID="d118s325"/> 

# 				<MAKEINSTANCE eventID="d118e327" eiid="d118ei2659" tense="PRESENT" aspect="NONE" polarity="NEG" pos="ADJECTIVE"/> 
# 				<EVENT eid="d118e327" class="STATE" word_form="high">high</EVENT> 

# 				<TIMEX3 tid="d118t326" type="DURATION" value="P5Y" temporalFunction="false" functionInDocument="NONE" word_form="five years"><CARDINAL>five</CARDINAL> years</TIMEX3>





# EVENT EVENT; EVENT EVENT

# y and z after x

# 	OCCURRENCE OCCURRENCE; STATE OCCURRENCE -

# 		"After a short, sharp drop when Asia's financial problems first became clear, the stock market has rebounded and corporate profits have remained healthy."

# 			<TLINK lid="d28l23" relType="AFTER" eventInstanceID="d28ei2242" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 

# 				<MAKEINSTANCE eventID="d28e95" eiid="d28ei2242" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/> 

# 				<EVENT eid="d28e95" class="OCCURRENCE" word_form="rebounded">rebounded</EVENT> 

# 				<MAKEINSTANCE eventID="d28e251" eiid="d28ei2240" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 

# 				<EVENT eid="d28e251" class="OCCURRENCE" word_form="drop">drop</EVENT>

# 			<TLINK lid="d28l49" relType="AFTER" eventInstanceID="d28ei2243" relatedToEventInstance="d28ei2240" signalID="d28s252"/> 

# 				<MAKEINSTANCE eventID="d28e96" eiid="d28ei2243" tense="PRESENT" aspect="PERFECTIVE" polarity="POS" pos="VERB"/>

# 				<EVENT eid="d28e96" class="STATE" word_form="remained">remained</EVENT>

# 				<MAKEINSTANCE eventID="d28e251" eiid="d28ei2240" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 

# 				<EVENT eid="d28e251" class="OCCURRENCE" word_form="drop">drop</EVENT>

# y with z after x
 
# 	STATE OCCURRENCE; STATE OCCURRENCE 

# 		"It will have 11.8 million shares outstanding after the offering, with Healthdyne owning about 65% of the total."

# 			<TLINK lid="d151l9" relType="AFTER" eventInstanceID="d151ei127" relatedToEventInstance="d151ei128" signalID="d151s19"/> 
# 				<MAKEINSTANCE eventID="d151e24" eiid="d151ei127" tense="FUTURE" aspect="NONE" polarity="POS" pos="VERB"/> 
# 				<EVENT eid="d151e24" class="STATE" stem="have" word_form="have">have</EVENT> 

# 				<MAKEINSTANCE eventID="d151e18" eiid="d151ei128" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
# 				<EVENT eid="d151e18" class="OCCURRENCE" stem="offer" word_form="offering">offering</EVENT> 

# 			<TLINK lid="d151l11" relType="AFTER" eventInstanceID="d151ei129" relatedToEventInstance="d151ei128" signalID="d151s19"/> 

# 				<MAKEINSTANCE eventID="d151e20" eiid="d151ei129" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
# 				<EVENT eid="d151e20" class="STATE" stem="own" word_form="owning">owning</EVENT> 

# 				<MAKEINSTANCE eventID="d151e18" eiid="d151ei128" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 
# 				<EVENT eid="d151e18" class="OCCURRENCE" stem="offer" word_form="offering">offering</EVENT> 

	



# EVENT TIME; EVENT TIME

# 	OCCURRENCE DATE; OCCURRENCE DURATION

# 		"Eight trading days after Oct. 12, the day before the stock market plunge, for instance, the Nasdaq Composite had fallen 4.3%, compared with 3.3% for the SampP 500, 3.5% for the New York Stock Exchange Composite Index and 3.6% for the industrial average."

# 			<TLINK lid="d119l58" relType="AFTER" eventInstanceID="d119ei2073" relatedToTime="d119t335" signalID="d119s337"/> 

# 				<MAKEINSTANCE 
# 					eventID="d119e208" 
# 					eiid="d119ei2073" 
# 					tense="PAST" 
# 					aspect="PERFECTIVE" 
# 					polarity="POS" 
# 					pos="VERB"
# 				>
# 				<EVENT 
# 					eid="d119e208" 
# 					class="OCCURRENCE" 
# 					word_form="fallen"
# 				>

# 				<TIMEX3 tid="d119t335" type="DATE" value="1989-10-12" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d119t294" word_form="oct. 12">Oct. 12</TIMEX3>

# 			<TLINK lid="d119l107" relType="ENDS" eventInstanceID="d119ei2073" relatedToTime="d119t336" signalID="d119s337"/> 

# 				<MAKEINSTANCE 
# 					eventID="d119e208" 
# 					eiid="d119ei2073" 
# 					tense="PAST" 
# 					aspect="PERFECTIVE" 
# 					polarity="POS" 
# 					pos="VERB"
# 				>
# 				<EVENT 
# 					eid="d119e208" 
# 					class="OCCURRENCE" 
# 					word_form="fallen"
# 				>

# 				<TIMEX3 tid="d119t336" type="DURATION" value="P8D" mod="EQUAL_OR_MORE" temporalFunction="false" functionInDocument="NONE" beginPoint="d119t335" word_form="eight trading days"><CARDINAL>Eight</CARDINAL> trading days</TIMEX3> 



xtabs(~ pos.3 + class.3, data=afterData)

#              class.3
# pos.3         OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB                38     4       3         2         3          0        3
#   NOUN                 5     2       0         1         0          0        0
#   ADJECTIVE            1     4       0         0         0          0        0
#   PREPOSITION          0     0       0         0         0          0        0
#   OTHER                0     0       0         0         0          0        0

# 44	10	3	3	3	0	3 = 66
# EXCLUDES 1 TIME IN HOST POSITION


xtabs(~ pos.4 + class.4, data=afterData)
#              class.4
# pos.4         OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   VERB                14     0       0         3         3          0        4
#   NOUN                24     0       0         2         0          0        0
#   ADJECTIVE            1     0       0         0         0          0        0
#   PREPOSITION          0     0       0         0         0          0        0
#   OTHER                0     0       0         0         0          0        0
# 

# 39 0	0	5	3	4	= 51
# EXCLUDES 16 TIMES IN COMPLEMENT POSITION


xtabs(~ class.3 + class.4, data=afterData)
#             class.4
# class.3      OCCURRENCE STATE I_STATE REPORTING ASPECTUAL PERCEPTION I_ACTION
#   OCCURRENCE         25     0       0         4         2          0        3
#   STATE               7     0       0         0         0          0        1
#   I_STATE             1     0       0         1         0          0        0
#   REPORTING           3     0       0         0         0          0        0
#   ASPECTUAL           1     0       0         0         0          0        0
#   PERCEPTION          0     0       0         0         0          0        0
#   I_ACTION            1     0       0         0         1          0        0

# 38	0	0	5	3	0	4 = 50

# SO this excludes the 17 links with TIMES IN EITHER POSITION

xtabs(~ type.7, data=afterData)
# type.7
#     DATE DURATION     TIME      SET 
#        0        1        0        0 
xtabs(~ type.8, data=afterData)
# type.8
#     DATE DURATION     TIME      SET 
#        4       12        0        0


printSentence(ToSentence(eiidToEvent("d182ei89",docs)))
# [1] "The warrants may be exercised until 90 days after their issue date."

TIDtoTime("d182t31",docs)
# <TIMEX3 tid="d182t31" type="DURATION" value="P90D" temporalFunction="false" functionInDocument="NONE" word_form="90 days"><CARDINAL>90</CARDINAL> days</TIMEX3> 

eiidToEvent("d182ei89",docs)
# <EVENT eid="d182e32" class="OCCURRENCE" stem="issue" word_form="issue">issue</EVENT> 

EIIDtoInstance("d182ei89",docs)
# <MAKEINSTANCE eventID="d182e32" eiid="d182ei89" tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"/> 







ToSentence(SIDtoSignal("d1s306",docs))
SIDtoTLINKS(tlinkWithSignals,"d1s306")

# <TLINK lid="d1l31" relType="ENDS" eventInstanceID="d1ei418" relatedToTime="d1t99" signalID="d1s306"/> 
# <s>
# 	And at the big brokerage houses, 
# <SIGNAL sid="d1s306" word_form="after">
# 	after
# </SIGNAL> 
# <TIMEX3 tid="d1t99" type="DURATION" value="P10Y" temporalFunction="false" functionInDocument="NONE" word_form="ten &#10; years">
# 	<CARDINAL>
# 		ten
# 	</CARDINAL>
#  	years
#  </TIMEX3>
# 	of 
# <EVENT eid="d1e52" class="OCCURRENCE" word_form="boom">boom</EVENT>, 
# 	they're 
# <EVENT eid="d1e53" class="OCCURRENCE" word_form="talking">
# 	talking
# </EVENT> 
# 	about 
# <EVENT eid="d1e54" class="OCCURRENCE" word_form="layoffs">
# 	layoffs
# </EVENT>.</s> 




ToSentence(SIDtoSignal("d10s155",docs))
SIDtoTLINKS(tlinkWithSignals,"d10s155")


# <TLINK lid="d10l18" relType="AFTER" eventInstanceID="d10ei2480" relatedToTime="d10t138" signalID="d10s155"/> 

# <s>
# 	``Obviously, it is deeply 
# <EVENT eid="d10e33" class="OCCURRENCE" word_form="discouraging">discouraging</EVENT> 
# 	for the family 
# <SIGNAL sid="d10s155" word_form="after">after</SIGNAL> 
# <TIMEX3 tid="d10t138" type="DURATION" value="P22M" temporalFunction="true" functionInDocument="NONE" beginPoint="d10t136" word_form="22 &#10;months">
# 	<CARDINAL>22</CARDINAL>months
# </TIMEX3>, 
# 	but there is no 
# <EVENT eid="d10e157" class="I_STATE" word_form="proof">proof</EVENT> of 
# <EVENT eid="d10e158" class="STATE" word_form="life">life</EVENT>.
# </s> 






ToSentence(SIDtoSignal("d116s1993",docs))
SIDtoTLINKS(tlinkWithSignals,"d116s1993")
# <TLINK lid="d116l44" relType="AFTER" eventInstanceID="d116ei2708" relatedToTime="d116t1994" signalID="d116s1993"/> 


# <s>The company's strategy for keeping its computer products business profitable -- it 
# <TIMEX3 tid="d116t1991" type="DATE" value="PAST_REF" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d116t202" word_form="recently">
# 	recently
# </TIMEX3> 
# <EVENT eid="d116e127" class="I_STATE" word_form="achieved">
# 	achieved
# </EVENT> 
# <EVENT eid="d116e1992" class="STATE" word_form="profitability">
# 	profitability
# </EVENT> 
# <SIGNAL sid="d116s1993" word_form="after">
# 	after
# </SIGNAL> 
# <TIMEX3 tid="d116t1994" type="DURATION" value="PXQ" temporalFunction="false" functionInDocument="NONE" word_form="several quarters">
# 	several quarters
# </TIMEX3> 
# of 
# <EVENT eid="d116e2430" class="OCCURRENCE" word_form="losses">
# 	losses
# </EVENT> 
# -- calls for a narrow focus and a lid on expenses.</s> 





ToSentence(SIDtoSignal("d119s337",docs))
SIDtoTLINKS(tlinkWithSignals,"d119s337")

# <TLINK lid="d119l58" relType="AFTER" eventInstanceID="d119ei2073" relatedToTime="d119t335" signalID="d119s337"/> 
# <TLINK lid="d119l107" relType="ENDS" eventInstanceID="d119ei2073" relatedToTime="d119t336" signalID="d119s337"/> 

# <s>
# <TIMEX3 tid="d119t336" type="DURATION" value="P8D" mod="EQUAL_OR_MORE" temporalFunction="false" functionInDocument="NONE" beginPoint="d119t335" word_form="eight trading days">
# 	<CARDINAL>Eight</CARDINAL> trading days
# </TIMEX3>
# <SIGNAL sid="d119s337" word_form="after">
# 	after
# </SIGNAL>
# <TIMEX3 tid="d119t335" type="DATE" value="1989-10-12" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d119t294" word_form="oct. 12">
# 	Oct. 12
# </TIMEX3>, 
# <TIMEX3 tid="d119t338" type="DATE" value="1989-10-12" temporalFunction="true" functionInDocument="NONE" anchorTimeID="d119t335" word_form="the day">
# 	the day
# </TIMEX3>
# <SIGNAL sid="d119s206" word_form="before">
# 	before
# </SIGNAL> 
# 	the stock market 
# <EVENT eid="d119e205" class="OCCURRENCE" word_form="plunge">
# 	plunge
# </EVENT>, 
# 	for instance, the <ENAMEX TYPE="ORGANIZATION">Nasdaq Composite</ENAMEX> had 
# <EVENT eid="d119e208" class="OCCURRENCE" word_form="fallen">
# 	fallen
# </EVENT> 
# <NUMEX TYPE="PERCENT">4.3%</NUMEX>, compared with <NUMEX TYPE="PERCENT">3.3%</NUMEX> for the <ENAMEX TYPE="ORGANIZATION">SampP</ENAMEX> <CARDINAL>500</CARDINAL>, <NUMEX TYPE="PERCENT">3.5%</NUMEX> for the <ENAMEX TYPE="ORGANIZATION">New York Stock Exchange Composite Index</ENAMEX> and <NUMEX TYPE="PERCENT">3.6%</NUMEX> for the industrial average.
# </s>





xtabs(~ tense.3 + tense.4 + aspect.3 + aspect.4, data=afterData)
# , , aspect.3 = NONE, aspect.4 = NONE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST         12       0    8      0          0        2        0
#   PRESENT       1       0    1      0          0        0        0
#   NONE          3       1    3      0          0        0        0
#   FUTURE        0       0    5      0          0        0        0
#   INFINITIVE    0       0    3      0          0        0        0
#   PRESPART      0       0    1      0          0        0        0
#   PASTPART      0       0    1      0          0        0        0

# , , aspect.3 = PERFECTIVE, aspect.4 = NONE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          1       0    1      0          0        0        1
#   PRESENT       0       0    2      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE_PROGRESSIVE, aspect.4 = NONE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    1      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = NONE, aspect.4 = PERFECTIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          1       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        1       1    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0



# COMPOSITE: 

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART PASTPERF	PRESPERF 
#   PAST         12       0    8      0          0        2        0		1			    	 23	
#   PASTPERF		  1		    0	   1		  0		       0   		  0		     1					   	    3
#   PRESENT       1       0    1      0          0        0        0			     			  2
#   PRESPERF		  0		    0	   2		  0		       0  		  0		     0		   				    2
#   PRESPERFPRG	  0 		  0 	 1		  0		       0	      0	 	     0						      1
#   NONE          3       1    3      0          0        0        0				    		  7
#   FUTURE        0       0    5      0          0        0        0		1   		1		  7	
#   INFINITIVE    0       0    3      0          0        0        0						      3
#   PRESPART      0       0    1      0          0        0        0						      1
#   PASTPART      0       0    1      0          0        0        0						      1
#   				     17		    1	  26			0				   0        2		     1 		2		    1	   50









# , , aspect.3 = PROGRESSIVE, aspect.4 = NONE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0


# , , aspect.3 = NONE, aspect.4 = PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PROGRESSIVE, aspect.4 = PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE, aspect.4 = PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE_PROGRESSIVE, aspect.4 = PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0


# , , aspect.3 = PROGRESSIVE, aspect.4 = PERFECTIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE, aspect.4 = PERFECTIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE_PROGRESSIVE, aspect.4 = PERFECTIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = NONE, aspect.4 = PERFECTIVE_PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PROGRESSIVE, aspect.4 = PERFECTIVE_PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE, aspect.4 = PERFECTIVE_PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0

# , , aspect.3 = PERFECTIVE_PROGRESSIVE, aspect.4 = PERFECTIVE_PROGRESSIVE

#             tense.4
# tense.3      PAST PRESENT NONE FUTURE INFINITIVE PRESPART PASTPART
#   PAST          0       0    0      0          0        0        0
#   PRESENT       0       0    0      0          0        0        0
#   NONE          0       0    0      0          0        0        0
#   FUTURE        0       0    0      0          0        0        0
#   INFINITIVE    0       0    0      0          0        0        0
#   PRESPART      0       0    0      0          0        0        0
#   PASTPART      0       0    0      0          0        0        0



# VERB:VERB

table(test$class.3)

# OCCURRENCE      STATE    I_STATE  REPORTING  ASPECTUAL PERCEPTION   I_ACTION 
#         16          0          1          0          1          0          2 


xtabs(~ class.3 + class.4, data=test)
#             class.4
# class.3      OCCURRENCE REPORTING ASPECTUAL I_ACTION
#   OCCURRENCE         10	    2         1	      3
#   I_STATE             0	    1         0	      0
#   ASPECTUAL           1	    0         0	      0
#   I_ACTION            1	    0         1       0




# VERB:NOUN  
test = subset(afterData, afterData$pos.3=="VERB"&afterData$pos.4=="NOUN")
table(test$class.3)

# OCCURRENCE      STATE    I_STATE  REPORTING  ASPECTUAL PERCEPTION   I_ACTION 
#         15          4          1          1          0          0          0


xtabs(~ class.3 + class.4, data=test)
  #             class.4
  # class.3      OCCURRENCE REPORTING 
  #   OCCURRENCE         13         2 
  #   STATE               4         0 
  #   I_STATE             1         0    
  #   REPORTING           1         0     


# [every noun complement is an occurrence except for 2 reporting nouns]


# ADJECTIVE:*EVENT

table(test$class.3)

# OCCURRENCE      STATE    I_STATE  REPORTING  ASPECTUAL PERCEPTION   I_ACTION 
#          0          2          0          0          0          0          0 




# NOUN:*EVENT

# OCCURRENCE      STATE    I_STATE  REPORTING  ASPECTUAL PERCEPTION   I_ACTION 
#          3          2          0          1          0          0          0 


# after ten years: tlink data


  
# "And at the big brokerage houses, after ten years of boom, they're talking about layoffs."

#   relatedToTime eventInstanceID lid   relType
#   d1t99     d1ei418     d1l31 ENDS

#   signalID  eventID.3 tense.3 aspect.3  polarity.3  pos.3
#   d1s306    d1e53   PRESENT PROGRESSIVE POS     VERB

#   class.3   word_form.3 stem.3
#   OCCURRENCE  talking   talk

#   type.8    value.8
#   DURATION  P10Y

#   temporalFunction.8  functionInDocument.8  word_form.8
#   false       NONE          ten years

