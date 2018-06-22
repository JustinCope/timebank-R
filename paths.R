

###############  SENTENCE #####################

# input: xml node, presupposed to be embedded within a type S xmlNode
# output: xml node of type S
ToSentence = function(descendent){
	ancestorList = xmlAncestors(descendent)
	n = length(ancestorList)
	while(n != 0){
		temp = getNodeSet(ancestorList[[n]],"/s")
		if(length(temp) == 1){
			return(temp[[1]])
		} else {
			n = n-1
		}
	}
}


################ TIMES ######################


TIDtoTime = function(tid,root){
	xpathQuery = paste("//TIMEX3[@tid='", tid, "']", sep="")
	return(getNodeSet(root,xpathQuery)[[1]])
}


################ LINKS ########################



LIDtoLink = function(lid,root){
	xpathQuery = paste("//*[@lid='", lid, "']", sep="")
	return(getNodeSet(root,xpathQuery)[[1]])
}


################# SIGNALS #######################


SIDtoSignal = function(sid,root){
	xpathQuery = paste("//SIGNAL[@sid='", sid, "']", sep="")
	return(getNodeSet(root,xpathQuery)[[1]])
}


sidListToSignalList = function(sidList,root){
	SignalList = c()
	for(i in 1:length(sidList)){
		sig = SIDtoSignal(sidList[[i]],root)
		SignalList[[i]] = tolower(xmlValue(sig))
	}
	return(SignalList)
}

# input: sid string
# output: string (sentence containing signal)
printSignalSentence = function(sid,root){
	printSentenceCite(ToSentence(SIDtoSignal(sid,root)))
}

# input: list(sid) and filename string
# output: file with filename containing list of strings of sentences containing signals
printSignalSentencesToFile = function(sidList,root,filename){
	sink(filename)
	sentList = lapply(sidList,printSignalSentence,root)
	for(i in 1:length(sentList)){
		print(sentList[[i]])
	}
	sink()
}



############### TO TLINKS #################

SIDtoTLINKS = function(sid,root){
	xpathQuery = paste("//TLINK[@signalID='", sid, "']", sep="")
	return(getNodeSet(root,xpathQuery))
	# for(i in 1:length(nodes)){
	# 	if(xmlGetAttr(nodes[[i]],"signalID") == sid){
	# 		print(nodes[[i]])
	# 	}
	# }
}

# getNodeSet(docs,"//TLINK[@signalID='d54s13']")


SIDLISTtoTLINKS = function(nodes,sidlist){
	for(x in 1:length(sidlist)){
		print(x)
		print(SIDtoTLINKS(nodes,sidlist[[x]]))
	}
}


################ EVENTS/INSTANCES #####################

# input: eid string
# output: xmlNode of type EVENT
EIDtoEVENT = function(eid,root){
	xpathQuery = paste("//EVENT[@eid='", eid, "']", sep="")
	return(getNodeSet(root,xpathQuery)[[1]])
}

EIIDtoInstance = function(eiid,root){
	xpathQuery = paste("//MAKEINSTANCE[@eiid='", eiid, "']", sep="")
	return(getNodeSet(root,xpathQuery)[[1]])
}

eiidToEvent = function(instance_number,root){
	xpathQuery = paste("//MAKEINSTANCE[@eiid='",instance_number,"']",sep="",collapse="")
	inst = getNodeSet(root,xpathQuery)[[1]]
	eid = xmlGetAttr(inst,"eventID")
	xpathQuery = paste("//EVENT[@eid='",eid,"']",sep="",collapse="")
	return(getNodeSet(root,xpathQuery)[[1]])
}

eiidToXMLsent = function(instance_number,root){
	event = eiidToEvent(instance_number,root)
	return(ToSentence(event))
}

eiidListToEventList = function(eiidList,root){
	lapply(eiidList,eiidToEvent,root)
}

eiidListToXMLSentList = function(eiidList,root){
	lapply(eiidList,eiidToXMLsent,root)
}

multiEventReport = function(eid_list,root){
	for(i in 1:length(eid_list)){
		event = EIDtoEVENT(eid_list[[i]],root)
		sentence = ToSentence(event)
		doc = ToDoc(sentence)
		instances = getEventInstances(event,root)
		print(printSentenceCite(sentence))
		print(event)
		for(j in 1:length(instances)){
			print(instances[[j]])
		}
	}
}




##################### Search any attribute value #######################

ValuetoNodes = function(value,root){
	xpathQuery = paste("//", "*","[@","*='",value,"']",sep="",collapse="")
	getNodeSet(root,xpathQuery)
}

########################### NODE to ALL IDs ################

NodesToIDs = function(nodes){
	valList = list()
	for(i in 1:length(nodes)){
		attrName = grep("^..?id$",names(xmlAttrs(nodes[[i]])),value=TRUE)
		valList[[i]] = xmlGetAttr(nodes[[i]],attrName)
	}
	return(valList)
}

