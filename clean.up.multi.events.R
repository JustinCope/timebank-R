# Gets rid of multiple instantiations of events

temp = getNodeSet(docs,"//*[@*='d4ei288']")
xmlAttrs(temp[[2]])[["relatedToEventInstance"]] = "d4ei286"
removeNodes(getNodeSet(docs,"//MAKEINSTANCE[@eiid='d4ei288']"))

temp = getNodeSet(docs,"//*[@*='d8ei354']")
xmlAttrs(temp[[3]])[["relatedToEventInstance"]] = "d8ei340"
removeNodes(getNodeSet(docs,"//*[@*='d8ei354']")[[2]])
removeNodes(getNodeSet(docs,"//*[@*='d8ei354']")[[1]])
removeNodes(getNodeSet(docs,"//*[@*='d8ei355']")[[2]])
removeNodes(getNodeSet(docs,"//*[@*='d8ei355']")[[1]])

temp = getNodeSet(docs,"//*[@*='d11ei116']")
xmlAttrs(temp[[2]])[["subordinatedEventInstance"]] = "d11ei106"
removeNodes(getNodeSet(docs,"//*[@*='d11ei116']")[[1]])

temp = getNodeSet(docs,"//*[@*='d14ei2087']")
xmlAttrs(temp[[2]])[["eventInstanceID"]] = "d14ei2076"
removeNodes(getNodeSet(docs,"//*[@*='d14ei2087']")[[1]])


