remove(list=ls()) # Clean up R workspace

options(width=200)

source('packages.R') # Libraries
source('preprocess.R') # Documents got, all IDs made unique, docs rooted in tree
source('other.functions.R') # All custom functions
source('paths.R') # Navigating, searching
source('link.Report.R') # Function for summarizing link

source('clean.up.multi.events.R') # Gets rid of multiple instantiations of events
source('clean.up.multi.tlinks.R')
source('alter.time.hosts.R')

# We create a type-list vector with the nodes of the following kinds:
events = getNodeSet(docs,"//EVENT") 
instances = getNodeSet(docs,"//MAKEINSTANCE")
times = getNodeSet(docs,"//TIMEX3")
signals = getNodeSet(docs,"//SIGNAL")
tlinks = getNodeSet(docs,"//TLINK")
slinks = getNodeSet(docs,"//SLINK")
alinks = getNodeSet(docs,"//ALINK")
tlinkWithSignals = getNodeSet(docs,"//TLINK[@signalID]") # tlinks with the signalID attribute


cardinality = getNodeSet(docs,"//MAKEINSTANCE[@cardinality]")
plurals = getNodeSet(docs,"//MAKEINSTANCE[@cardinality='PLURAL']")
modality = getNodeSet(docs,"//MAKEINSTANCE[@modality]")

# Only 3 of our node lists have text content.  We clean it up and add it as an attribute
wordForms(events) # wordForms defined in 'preprocessing.functions.R'
wordForms(times)
wordForms(signals)

# Each node list is used to create a data frame
eventData = makeDataFrame(events)
instanceData = makeDataFrame(instances)
timeData = makeDataFrame(times)
signalData = makeDataFrame(signals)
tlinkData = makeDataFrame(tlinks)
slinkData = makeDataFrame(slinks)
alinkData = makeDataFrame(alinks)

# links = newXMLNode("links")
# sink("sink.txt")
# addChildren(links,tlinks)
# addChildren(links,slinks)
# addChildren(links,alinks)
# sink()
# file.remove("sink.txt")

# We want events matched with their instances in a single data frame so that we can, e.g., examine the relationship between tense and class or examine the word forms that occur with a particular aspect or....
instanceEventData = merge(instanceData, eventData, by.x="eventID", by.y="eid", all=TRUE)

timeVector = matrix(dimnames=list("","timeID")) # to make before data frame comparable to after

beforeLinks = getLinkSubset(tlinkWithSignals, "before")
beforeData = makeDataFrame(beforeLinks)
# beforeData = cbind.fill(beforeData,timeVector)
# beforeData = as.data.frame(beforeData)
beforeData = merge(beforeData,instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
beforeData = merge(beforeData,instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
beforeData = merge(beforeData,timeData,by.x="timeID",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))
beforeData = merge(beforeData,timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))


afterLinks = getLinkSubset(tlinkWithSignals, "after")
afterData = makeDataFrame(afterLinks)
afterData = merge(afterData,instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp")) 
afterData = merge(afterData,instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
afterData = cbind.fill(afterData,timeVector)
afterData = merge(afterData,timeData,by.x="timeID",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))
afterData = merge(afterData,timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))



sinceLinks = getLinkSubset(tlinkWithSignals, "since")
sinceThenLinks = getLinkSubset(tlinkWithSignals, "since then")
sinceLinks[length(sinceLinks)+1] = sinceThenLinks[1]
sinceData = makeDataFrame(sinceLinks)
# a <- subset(sinceData, eventInstanceID=="d166ei2002" & relatedToTime=="d166t126")
# sinceData <- dplyr::setdiff(sinceData,a)
sinceData = cbind.fill(sinceData,timeVector)
sinceData = merge(sinceData,instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
sinceData = merge(sinceData,instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
sinceData = merge(sinceData,timeData,by.x="timeID",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))
sinceData = merge(sinceData,timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))



untilLinks = getLinkSubset(tlinkWithSignals, "until")
untilData = makeDataFrame(untilLinks)
# a <- subset(untilData, eventInstanceID=="d6ei1660" & relatedToEventInstance=="d6ei1661")
# b <- subset(untilData, eventInstanceID=="d54ei1994" & relatedToEventInstance=="d54ei2000")
# untilData <- dplyr::setdiff(untilData,a)
# untilData <- dplyr::setdiff(untilData,b)
untilData = cbind.fill(untilData,timeVector)
untilData = merge(untilData,instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
untilData = merge(untilData,instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE,suffixes = c(".e_host",".e_comp"))
untilData = merge(untilData,timeData,by.x="timeID",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))
untilData = merge(untilData,timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE,suffixes = c(".t_host",".t_comp"))

rm(timeVector)

################# This last bit is needed to count the sentences inside these two "Lede paragraph" tags ##########

LPs = getNodeSet(docs,"//LP")
parentNode = xmlParent(LPs[[1]])
replacement = parseXMLAndAdd("<LP> WASHINGTON -- <s>Iraq's Saddam Hussein, his options for <EVENT eid='d47e400' class='ASPECTUAL' word_form='ending'>ending</EVENT> the Persian Gulf <EVENT eid='d47e399' class='STATE' word_form='crisis'>crisis</EVENT> growing increasingly unpleasant, <EVENT eid='d47e401' class='I_STATE' word_form='assumed'>assumed</EVENT> the <EVENT eid='d47e462' class='STATE' word_form='role'>role</EVENT> of embattled Arab hero in <EVENT eid='d47e403' class='I_ACTION' word_form='offering'>offering</EVENT> his first rough <EVENT eid='d47e404' class='OCCURRENCE' word_form='proposal'>proposal</EVENT> for a negotiated <EVENT eid='d47e405' class='ASPECTUAL' word_form='end'>end</EVENT> to the <EVENT eid='d47e406' class='STATE' word_form='confrontation'>confrontation</EVENT>.</s> <s>The Iraqi leader, in an '<EVENT eid='d47e407' class='OCCURRENCE' word_form='initiative'>initiative</EVENT>' <EVENT eid='d47e408' class='OCCURRENCE' word_form='designed'>designed</EVENT> as much to <EVENT eid='d47e411' class='I_ACTION' word_form='rally'>rally</EVENT> Arab public <EVENT eid='d47e412' class='STATE' word_form='opinion'>opinion</EVENT> as to <EVENT eid='d47e413' class='I_ACTION' word_form='launch'>launch</EVENT> meaningful <EVENT eid='d47e414' class='STATE' word_form='negotiations'>negotiations</EVENT>, <EVENT eid='d47e415' class='REPORTING' word_form='announced'>announced</EVENT> <TIMEX3 tid='d47t416' type='DATE' value='1990-08-12' temporalFunction='true' functionInDocument='NONE' anchorTimeID='d47t397' word_form='yesterday'>yesterday</TIMEX3> that he will <EVENT eid='d47e417' class='OCCURRENCE' word_form='withdraw'>withdraw</EVENT> his troops from Kuwait only if Israel <EVENT eid='d47e418' class='OCCURRENCE' word_form='withdraws'>withdraws</EVENT> from the West Bank and Syria from Lebanon.</s> <s>He apparently <EVENT eid='d47e419' class='I_STATE' word_form='hopes'>hopes</EVENT> to <EVENT eid='d47e421' class='OCCURRENCE' word_form='lure'>lure</EVENT> <EVENT eid='d47e422' class='OCCURRENCE' word_form='support'>support</EVENT> from Arabs who have <EVENT eid='d47e423' class='OCCURRENCE' word_form='spurned'>spurned</EVENT> him so far by <EVENT eid='d47e424' class='I_ACTION' word_form='suggesting'>suggesting</EVENT> that Iraq will <EVENT eid='d47e425' class='OCCURRENCE' word_form='use'>use</EVENT> its <EVENT eid='d47e426' class='STATE' word_form='occupation'>occupation</EVENT> of Kuwait as a lever to <EVENT eid='d47e427' class='OCCURRENCE' word_form='solve'>solve</EVENT> the Arab world's most frustrating <EVENT eid='d47e428' class='STATE' word_form='problem'>problem</EVENT>, the 23-year Israeli <EVENT eid='d47e429' class='STATE' word_form='occupation'>occupation</EVENT> of land <EVENT eid='d47e430' class='OCCURRENCE' word_form='claimed'>claimed</EVENT> by Palestinians.</s> </LP>")
replaceNodes(parentNode[[9]],replacement[[1]],free=TRUE) #<LP> is the 8th child of its parent

parentNode = xmlParent(LPs[[2]])
replacement = parseXMLAndAdd("<LP> WASHINGTON -- <s>With the ground <EVENT eid='d48e433' class='OCCURRENCE' word_form='battle'>battle</EVENT> to <EVENT eid='d48e435' class='OCCURRENCE' word_form='liberate'>liberate</EVENT> Kuwait <EVENT eid='d48e436' class='ASPECTUAL' word_form='proceeding'>proceeding</EVENT> with surprising speed and success, Bush administration officials are optimistic the Persian Gulf <EVENT eid='d48e438' class='OCCURRENCE' word_form='war'>war</EVENT> can <EVENT eid='d48e439' class='ASPECTUAL' word_form='begin'>begin</EVENT> <EVENT eid='d48e441' class='OCCURRENCE' word_form='winding'>winding</EVENT> down in a matter of days.</s> <s>The enormous ground <EVENT eid='d48e524' class='OCCURRENCE' word_form='offensive'>offensive</EVENT> by U.S. Marines and Army troops, at least during its first 24 hours, <EVENT eid='d48e442' class='OCCURRENCE' word_form='met'>met</EVENT> only sporadic Iraqi <EVENT eid='d48e443' class='OCCURRENCE' word_form='resistance'>resistance</EVENT> as it quickly <EVENT eid='d48e444' class='OCCURRENCE' word_form='penetrated'>penetrated</EVENT> deep into Kuwait and parts of Iraq, military officials <EVENT eid='d48e446' class='REPORTING' word_form='said'>said</EVENT>.</s> <s>According to press pool <EVENT eid='d48e447' class='REPORTING' word_form='reports'>reports</EVENT>, U.S. Marines are already <EVENT eid='d48e534' class='STATE' word_form='on'>on</EVENT> the outskirts of Kuwait City.</s> </LP>")
replaceNodes(parentNode[[8]],replacement[[1]])


LEADPARA = getNodeSet(docs,"//LEADPARA")
parentNode = xmlParent(LEADPARA[[1]])
replacement = parseXMLAndAdd("<LEADPARA> <s> One of President Bush's sons has <EVENT eid='e64' class='REPORTING'>informed</EVENT> White House Chief of Staff John Sununu that he has <EVENT eid='e65' class='OCCURRENCE'>lost</EVENT> much of his support among Republicans, <EVENT eid='e68' class='OCCURRENCE'>prompting</EVENT> an intense effort by Sununu to <EVENT eid='e83' class='STATE'>hold</EVENT> on to his job by <EVENT eid='e84' class='OCCURRENCE'>demonstrating</EVENT> his GOP backing, White House and Republican sources <EVENT eid='e69' class='REPORTING'>said</EVENT> <TIMEX3 tid='t70' type='DATE' value='1991-12-02' temporalFunction='true' functionInDocument='NONE' anchorTimeID='t66'>Monday</TIMEX3>. </s> <s> Sununu was <EVENT eid='e85' class='REPORTING'>told</EVENT> <TIMEX3 tid='t73' type='DATE' value='1991-11-27' temporalFunction='true' functionInDocument='NONE' anchorTimeID='t66'>Wednesday</TIMEX3> by Bush's son, George, that he had <EVENT eid='e75' class='OCCURRENCE'>alienated</EVENT> members of the Cabinet, the White House staff and the Republican political community, <EVENT eid='e76' class='OCCURRENCE'>creating</EVENT> a situation that puts his effectiveness in significant doubt, the sources <EVENT eid='e77' class='REPORTING'>said</EVENT>. </s> </LEADPARA>")
replaceNodes(parentNode[[5]],replacement[[1]])

rm(LPs,LEADPARA,parentNode,replacement)

sentences = getNodeSet(docs,"//s") # getNodeSet is from the xml library

