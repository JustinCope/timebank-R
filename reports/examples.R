
######################## XML data counts ########################

length(sentences)
# [1] 2624
length(events)
# [1] 7935
length(instances)
# [1] 7940
length(times)
# [1] 1414
length(signals)
# [1] 688
length(tlinks)
# [1] 6418
length(slinks)
# [1] 2932
length(alinks)
# [1] 265







                           



### MAKEINSTANCE dataframe ###
# # This is another way to determine how many event instances include the optional "cardinality" and "modality" attributes.
# # I have no idea why I included it, as the methods above are much more intuitive.   

# # Converting a nodeset (instances) into a list as prerequisite for creating data frame			  
# instanceList = lapply(instances,xmlAttrs) #this is just a list
# n = length(instanceList) # 7940
# # names(instanceList)<-c(1:length(instanceList))

# nameList = list()
# for(i in 1:n){
# 	nameList[[i]] <- names(instanceList[[i]]) 
# 	}

# table(unlist(nameList))
#      #aspect cardinality        eiid     eventID    modality    polarity 
#      #  7940          30        7940        7940         320        7940 
#      #   pos       tense 
#      #  7940        7940 





# xmlName([node]) # self
# names([node]) # children


####### Getting the <DocNo>s of the documents where stems are actually used
# stemExamples = getNodeSet(docs, "//EVENT[@stem]")
# sink("stems.txt")
# l = list()
# for(i in 1:length(stemExamples)){
# 	l[[i]] <- DocNo(sentenceToDoc(stemExamples[[i]]))
# }
# m = unique(l)
# for(i in 1:length(m)){
# 	print(m[[i]])
# }
# sink()


# These don't work:  I ended up just creating the loop to apply IDtoNodes (but lapply would have worked, wouldn't it have?) to a test list, and I manually inspected the output.
# checkMultiSlink = function(id_list){
# 	for(i in 1:length(id_list)){
# 		temp = IDtoNodes(id_list[[i]])
# 		for(j in 1:length(temp)){
# 			temp2 = getNodeSet(temp[[j]],"//SLINK")
# 			if(length(temp2) > 1){
# 				print(temp2)
# 			}
# 		}
# 	}
# }

# checkMultiTlink = function(id_list){
# 	for(i in 1:length(id_list)){
# 		temp = IDtoNodes(id_list[[i]])
# 		for(j in 1:length(temp)){
# 			temp2 = getNodeSet(temp[[j]],"//TLINK")
# 			if(length(temp2) > 1){
# 				return(temp2)
# 			}
# 		}
# 	}
# }




# beforeNounComplement = subset(beforeData, beforeData$pos.y=="NOUN")
# beforeNounCompSigIDs = c('d1s13', 'd3s43', 'd46s44', 'd58s15', 'd61s13', 'd112s98', 'd119s206', 'd134s18', 'd145s91', 'd145s91', 'd145s180')


# subset(beforeData, relType == "BEGINS")
# multiEventReport(c("d119e208","d159e40"),docs)

# signalList = c("d1s306","d4s66","d4s66","d8s58","d8s58","d10s155","d17s3","d17s3","d116s1993","d118s325","d118s325","d119s337")


