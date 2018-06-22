

## These are broken up into pieces in main.R ##
# beforeData = merge(merge(merge(makeDataFrame(beforeLinks),instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE),instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE),timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE)
# afterData = merge(merge(merge(merge(makeDataFrame(afterLinks),instanceEventData,by.x="eventInstanceID",by.y="eiid",all.x=TRUE),instanceEventData,by.x="relatedToEventInstance",by.y="eiid",all.x=TRUE),timeData,by.x="timeID",by.y="tid",all.x=TRUE),timeData,by.x="relatedToTime",by.y="tid",all.x=TRUE)

## This has been remedied by providing custom suffixes for each merge
# Warning message:
# In merge.data.frame(merge(merge(merge(makeDataFrame(afterLinks),  :
#   column names ‘word_form.x’, ‘word_form.y’ are duplicated in the result


# Was it neessary to create these copies for the merge? Because I want to keep the separate data frames and also the merged frame?
# No, it was not necessary.  Merge creates a new data frame.  It doesn't alter the input data frames
# instanceDataCopy = makeDataFrame(instances)
# eventDataCopy = makeDataFrame(getNodeSet(docs,"//EVENT")) # makeDataFrame(events) 
# instanceEventData = merge(instanceDataCopy, eventDataCopy, by.x="eventID", by.y="eid", all=TRUE)



# Was I checking to make sure that all SLINKS had the obligatory signalID attribute
# SLINKs = getNodeSet(docs,"//SLINK[@signalID]")



########### attempt to automate production of percentage tables #########

l = length(tab)
r = rows(tab)
c = columns(tab)

l/(max(r)*max(c))

factorList = c("pos","tense","aspect")

xtabFrequenciesPercentages = function(factorlist,dataSource){
	n = length(factorList)
	factorQuery = "~ "
	for(i in 1:n-1){
		factorQuery = paste(factorQuery,factorList[i]," + ",sep="")
	}
	factorQuery = paste(factorQuery,factorList[n],sep="")
	tab = xtabs(factorQuery,data=dataSource)
	print(tab)
	tab/nrow(dataSource)
	# rowPerc(tab)
	# colPerc(tab)
}

xtabFrequenciesPercentages(factorList,instanceEventData)
