############## Additional Functions #############

# input: set(?) of xml nodes
# output: list(?) of text values of the input nodes
getValue = function(nodes){lapply(nodes, function (x) xmlSApply(x,xmlValue))}


# input: list of xml nodes
# output: character "()"
cleanTag = function(x){
	toChar = unlist(getValue(x),use.names=FALSE)
	charConcat = paste(toChar,sep="",collapse="")
	stripped = gsub("[[:blank:]]"," ",charConcat)
	firstParens = gsub("^ *\\n? *","(",stripped)
	secondParens = gsub(" *\\n? *$",")",firstParens)
	return(secondParens)
}


############ Printing stuff ################

# input: xml node of type "TimeML"
# output: string providing the name of the file from which the TimeML node was created
DocNo = function(article){
	docNoTags = xmlValue(xmlElementsByTagName(article,"file_name")[[1]])
	# ~/Dropbox/cope.dissertation/timebank_1_2/data/extra/ .tml
	docNoSuffix = gsub(".tml","",docNoTags)
	docNoPath = gsub(path,"",docNoSuffix)
	escaped = gsub("_","\\\\_",docNoPath)
	return(escaped)#cleanTag(docNoTags)
}

# input: xml node of type "S"
# output: xml node of type "TimeML"
ToDoc = function(sentence){
	return(xmlAncestors(sentence)[[2]])
}

# input: xml node of type "S"
# output: English sentence, xml removed
printSentence = function(sentence){
	spaceOut(sentence)
	sent = gsub(" +"," ",gsub("\\n"," ",xmlValue(sentence)))
	possFix = gsub("(\\w) 's ","\\1's ",sent)
	negContract = gsub("(\\w) n't","\\1n't",possFix)
	quoteFix = gsub("`` (\\w)","``\\1",negContract)
	quoteFix = gsub(' "(\\w)',' ``\\1',quoteFix)
	quoteFix = gsub('(\\S)" ',"\\1''",quoteFix)
	leadSpace = gsub("^ ","",quoteFix)
	noPerc = gsub("%","\\\\%",leadSpace)
	noDollar = gsub("\\$","\\\\$",noPerc)
	underFix = gsub("\\_","\\\\\\_",noDollar)
	commaFix = gsub(" (,|\\.)","\\1",underFix)
	return(commaFix)
}

spaceOut = function(node){
	chilin = xmlChildren(node)
	for(i in 1:length(chilin)){
		if(inherits(chilin[[i]],"XMLInternalTextNode")){
			v = xmlValue(chilin[[i]])
			n = paste(" ",v," ",sep="")
			xmlValue(chilin[[i]]) = n
		} else {
			spaceOut(chilin[[i]])
		}
	}
}

# input: xml node of type "S"
# output: English sentence, xml removed, followed by citation of TimeBank document by filename
printSentenceCite = function(sentence){
	sent = printSentence(sentence)
	sentID = DocNo(ToDoc(sentence))
	return(cat(paste(sent, " (", sentID, ")", sep=""),fill=TRUE))
}

# input: xml node of type "TimeML"
# output: string with Headline or Program Title and date
# Used in function: "printDocument" 
# Only works for approx. half of the articles -- AP90 uses "HEAD" in but this does not uniquely identify headline; in another, it doesn't use any identifier;
docTitleDate = function(article){
	networkBroadcast = getNodeSet(article,"//bn_episode_trans")
	if(length(networkBroadcast)==0){
		name = cleanTag(xmlElementsByTagName(article,"HEADLINE",recursive=TRUE))
		date = cleanTag(xmlElementsByTagName(article,"DATE_TIME",recursive=TRUE))
	} else {
		name = xmlGetAttr(networkBroadcast[[1]],"program")
		date = xmlGetAttr(networkBroadcast[[1]],"air_date")
	}
	print(paste(name,date))
}

# input: xml node of type "TimeML"
# output: list of xml nodes of type S
getSentences = function(document){
	getNodeSet(document,"//s")
}

# input: xml node of type "TimeML"
# output: string with headline, date, source filename and contents of article, xml removed
printDocument = function(document){
	head = docTitleDate(document)
	doc = paste(lapply(getSentences(document),printSentence), collapse=" | ")
	sentID = DocNo(document)
	paste("[", head, sentID, "]", doc)
}



# input: xml node of type EVENT, xml node
# output: set of nodes of type MAKEINSTANCE which instantiate input EVENT
getEventInstances = function(event,root){ 
	eid = xmlGetAttr(event,"eid")
	# builds a search for MAKEINSTANCE objects with attribute eventID equal to input
	search = paste("//MAKEINSTANCE[@eventID='", eid, "']",sep="") 
	getNodeSet(root,search) # executes search, returning hits
}


valueSearch = function(value,root){
	query = paste("//*[@*='",value,"']",sep="")
	return(getNodeSet(root,query))
}

eidSentence = function(value,root){
	return(printSentenceCite(ToSentence(EIDtoEVENT(value,root))))
}

eidSentenceXML = function(value,root){
	return(ToSentence(EIDtoEVENT(value,root)))
}


instanceSubframe = function(at1,val1,at2,val2){
	query = paste("instanceEventData[instanceEventData$",at1,"=='",val1,"'&instanceEventData$",at2,"=='",val2,"',]",sep="")
	# return(query)
	return(eval(parse(text=query)))
}

sampleFrame = function(frame,size){
	numList = sample(1:nrow(frame),size,replace=FALSE)
	return(frame[numList,])
}



eventReport = function(eventid,root){
	print("")
	print(eidSentence(eventid,root))
	print("")
	print(valueSearch(eventid,root))
	print("")
	print(eidSentenceXML(eventid,root))
	print("")
}

eventListReport = function(event_list,root){
	for(i in 1:length(event_list)){
		eventReport(event_list[[i]],root)
 	}
}



# sample(1:100, 3, replace=FALSE)


# eventListReport(event_list,root)
# 	for(i in 1:length(event_list)){

# 	}
# }


# IDsToList = function(nodes){
# 	idTypes = list("eid","tid","sid","lid")
# 	for(i in 1:4){
		
# 	}
# 	eids = lapply(nodes, xmlGetAttr, "eid")
# 	tids = lapply(nodes, xmlGetAttr, "tid")
# 	sids = lapply(nodes, xmlGetAttr, "sid")
# 	lids = lapply(nodes, xmlGetAttr, "lid")
# 	idList = list(eids,tids,sids,lids)
# 	for(i in 1:4){
# 		if(idList[[i]][[1]] != NULL){
# 			temp = idList[[i]]
# 			print(temp)
# 		}
# 		# if(length(ValuetoNodes(idList[[i]]),root) > 0){
# 		# 	return(idList[[i]])
# 		# }
# 	}
# }




# input: xml node of type S
# output: list of xml nodes of type EVENT
getSentenceEvents = function(sentence){
	getNodeSet(sentence,"//EVENT")
}

# input: xml node of type S
# output: list of sets of xml nodes of type MAKEINSTANCE
getSentenceEventInstances = function(sentence,root){
	x = getSentenceEvents(sentence)
	y = length(x)
	if(y>0){
		z <- vector("list", y)
		for(i in 1:y){
			a = getEventInstances(x[[i]],root)
			print(a)
			z[[i]] <- c(x[[i]],a)
		}
		return(z)
	}
}

getSentenceTimes = function(sentence){
	getNodeSet(sentence,"//TIMEX3")
}

getSentenceSignals = function(sentence){
	getNodeSet(sentence,"//SIGNAL")
}

# ????? Untested
frameInstances = function(event_instance_list){
	x = length(event_instance_list)
	y = vector("list",x)
	for(i in 1:x){
		y[[i]] = event_instance_list[[i]][[2]]
	}
	sapply(y,xmlAttrs)
}





# ?????? Untested
getSentenceEntities = function(sentences){
	if(length(sentences) > 0){
		for(i in 1:length(sentences)){ 
			sentence = sentences[[i]]
			print(sentence)
			events = getNodeSet(sentence,"EVENT")
			if(length(events) > 0){
				for(j in 1:length(events)){
					print(events[[j]])
					eid = xmlGetAttr(events[[j]],"eid")
					print(eid)
					getEventInstances(EIDtoEVENT(eid,root),root)
				}
			}
		}
	}
	else print("No sentences")
}


# # Converting a nodeset (instances) into a list as prerequisite for creating data frame			  
# instanceList = lapply(instances,xmlAttrs) #this is just a list
# n = length(instanceList) # 7940
# #names(instanceList)<-c(1:length(instanceList))
# # d = as.data.frame(t(instanceList[[1]]))


# # Create dataframe; rbind.fill inserts the value "NA" into a cell (x,y) if the instance in row x no attribute corresponding to the name of column y
# How does this compare to xmlToDataFrame?
makeDataFrame = function(nodeSet){
	sink("data.frame.txt")
	nodeList = lapply(nodeSet,xmlAttrs)
	n = length(nodeList)
	d = data.frame()
	for(i in 1:n){
		d = rbind.fill(
			d,as.data.frame(t(nodeList[[i]]))
		)
	} 
	sink()
	file.remove("data.frame.txt")
	return(d)
} # Now we have a data frame


# To be used with eventData, timeData, signalData to get ordered frequency counts of word forms
getWordFreq = function(data){
	freqs = count(data, 'word_form')
	return(freqs[order(-freqs$freq),])
}

# paste("//MAKEINSTANCE[@eiid='",instance_number,"']",sep="",collapse="")

# eventClassPos = function(class,pos,root){
# 	xPathQuery = paste("//EVENT[@class='",class,"']",sep="",collapse="")
# 	classSet = getNodeSet(root,xpathQuery)



# }


getPosSet = function(pos,root){
	xPathQuery = paste("//MAKEINSTANCE[@pos='",pos,"']",sep="",collapse="")
	posSet = getNodeSet(root,xPathQuery)
}	

# addAttributes(test2,.attrs=



# mergeEventInstance = function(instanceID,root){
# 	instance = EIIDtoInstance(instanceID,root)
# 	attrList = xmlAttrs(eiidToEvent(instanceID,root))
# 	for(i in 1:length(attrList)){
# 			xmlAttrs(instance) <- attrList[i]
# 		}
# }

# mergeAllEventsInstances = function(root){
# 	instancesCopy = getNodeSet(root,"//MAKEINSTANCE")
# 	instanceIDList = NodesToIDs(instancesCopy)
# 	for(i in 1:length(instanceIDList)){
# 		mergeEventInstance(instanceIDList[[i]],root)
# 	}
# }

# mergeAllEventsInstances = function(root){
# 	instancesCopy = getNodeSet(root,"//MAKEINSTANCE")
# 	instanceIDList = NodesToIDs(instancesCopy)
# 	sapply(instanceIDList,mergeEventInstance,root)
# }



extractID = function(nodeList,target,idType){
	IDs = c()
	n = 1
	for(i in 1:length(nodeList)){
		if(xmlValue(nodeList[[i]])==target){
			IDs[[n]] = xmlGetAttr(nodeList[[i]],idType)
			n = n+1
		}
	}
	return(IDs)
}


extractIDfromAll = function(nodeList,idType){
	IDs = c()
	for(i in 1:length(nodeList)){
		IDs[[i]] = xmlGetAttr(nodeList[[i]],idType)
	}
	return(IDs)
}

# This doesn't work because it needs to understand query not as a string...
# getSignalIDsFromDataFrame = function(dataframe){
# 	query = paste(dataframe,"$signalID",sep="")
# 	return(names(table(query)))
# }

getValueListFromDataFrameColumn = function(dataframeColumn){
	return(names(table(dataframeColumn)))
}
# example > getValueListFromDataFrameColumn(beforeData$signalID)

getNodesbyAttrValList = function(nodeList,targetAttr,valList){
	Nodes = c()
	n = 1
	for(i in 1:length(nodeList)){
		for(j in 1:length(valList)){
			if(is.element(targetAttr,names(xmlAttrs(nodeList[[i]])))){
				if(xmlGetAttr(nodeList[[i]],targetAttr) == valList[[j]]){
					Nodes[[n]] = nodeList[i]
					n = n+1
				}
			}
		}
	}
	return(Nodes)
}


# Used for getting links that have a particular signal value
getLinkSubset = function(nodes,word){
#	sink('temp.txt')
	Links = c()
	n = 1
	for(i in 1:length(nodes)){
		sid = xmlGetAttr(nodes[[i]],"signalID") # Get's the signalID from the <i>th node of the <nodes> argument 
		sig = SIDtoSignal(sid,docs) # Get the actual xml signal (docs defined in preprocessing?)
		if(xmlGetAttr(sig,"word_form")==word){ # Check whether the <word_form> of the signal is the <word> argument
			Links[n] = nodes[i] # Collect the matching nodes
			n = n+1 # Only augment if the node was a match
		}
	}
#	sink() # This would never reengage?
	return(Links)
}


# Links = c()
# n = 1
# for(i in 1:length(tlinkWithSignals)){
# 	sid = xmlGetAttr(tlinkWithSignals[[i]],"signalID")
# 	sig = SIDtoSignal(sid,docs)()
# 	if(xmlGetAttr(sig,"word_form")=="after"){
# 		Links[[n]] = tlinkWithSignals[i]
# 		n = n+1
# 	}
# }


linkReport = function(lid,root){
	link = LIDtoLink(lid,root)
	print(link)
	if(is.null(xmlGetAttr(link,"timeID"))){
		host = xmlGetAttr(link,"eventInstanceID")
		hostInstance = EIIDtoInstance(host,root)
		hostEvent = EIDtoEVENT(xmlGetAttr(hostInstance,"eventID"),root)
		print(hostInstance)
		print(hostEvent)
		xmlSentence = ToSentence(hostEvent)
		sentence = printSentenceCite(ToSentence(hostEvent))
	} else {
		host = xmlGetAttr(link,"timeID")
		hostTime = TIDtoTime(host,root)
		print(hostTime)
		xmlSentence = ToSentence(hostTime)
		sentence = printSentenceCite(ToSentence(hostTime))
	}
	if(is.null(xmlGetAttr(link,"relatedToTime"))){
		comp = xmlGetAttr(link,"relatedToEventInstance")
		compInstance = EIIDtoInstance(comp,root)
		compEvent = EIDtoEVENT(xmlGetAttr(compInstance,"eventID"),root)
		print(compInstance)
		print(compEvent)
	} else {
		comp = xmlGetAttr(link,"relatedToTime")
		compTime = TIDtoTime(comp,root)
		print(compTime)
	}
	print(xmlSentence)
	print(sentence)
	print("\n")
}

linkListReport = function(linkList,root){
	for(i in 1:length(linkList)){
		linkReport(linkList[[i]],docs)
	}
}


testLinks = c("d119l106", "d1l10", "d164l57", "d159l76", "d159l23")


# Shortcut for printing frequencies and percentages of two factor crosstabulations:
twoFactorFreqPerc = function(factor1,factor2,dataSource){
	factorQuery = paste("~ ",factor1," + ",factor2,sep="")
	tab = xtabs(factorQuery,data=dataSource)
	print(tab)
	print("Percentages:")
	print(round(tab/nrow(dataSource),2))
	print("Row Percentages:")
	print(rowPerc(tab))
	print("Column Percentages:")
	print(colPerc(tab))
}


				  