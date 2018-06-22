# Reports for list of unique link IDs
# uniqueBeforeLinkID
# beforeData

linkListHostCompReport = function(uniqueLinkIDs,data){
	for(i in 1:length(uniqueLinkIDs)){
		print("")
		print(i)
		foo = subset(data,lid == uniqueLinkIDs[[i]])
		if(is.na(foo$timeID)){
			print(paste(foo$tense.e_host[[1]], foo$aspect.e_host[[1]], foo$polarity.e_host[[1]], foo$pos.e_host[[1]], foo$modality.e_host[[1]], foo$class.e_host[[1]], foo$word_form.e_host[[1]]), sep = " ")
		} else {
			print(paste(foo$type.t_host[[1]], foo$value.t_host[[1]], foo$temporalFunction.t_host[[1]], foo$functionInDocument.t_host[[1]], foo$word_form.t_host[[1]], sep = " "))
		}
		if(is.na(foo$relatedToTime)){
			print(paste(foo$tense.e_comp[[1]],foo$aspect.e_comp[[1]], foo$polarity.e_comp[[1]], foo$pos.e_comp[[1]], foo$modality.e_comp[[1]], foo$class.e_comp[[1]], foo$word_form.e_comp[[1]], sep=" "))
		} else {
			print(paste(foo$type.t_comp[[1]], foo$value.t_comp[[1]], foo$temporalFunction.t_comp[[1]], foo$functionInDocument.t_comp[[1]], foo$word_form.t_comp[[1]], sep = " "))
		}
		print(printSentenceCite(ToSentence(SIDtoSignal(foo$signalID, docs))))
	}
}

# linkListHostCompReport = function(uniqueLinkIDs,data){
# 	for(i in 1:length(uniqueLinkIDs)){
# 		print("")
# 		print(i)
# 		foo = subset(data,signalID == uniqueLinkIDs[[i]])
# 		if(is.na(foo$timeID)){
# 			print(paste(foo$tense.x[[1]], foo$aspect.x[[1]], foo$polarity.x[[1]], foo$pos.x[[1]], foo$modality.x[[1]], foo$class.x[[1]], foo$word_form.x[[1]]), sep = " ")
# 		} else {
# 			print(paste(foo$type.x[[1]], foo$value.x[[1]], foo$temporalFunction.x[[1]], foo$functionInDocument.x[[1]], foo$word_form.x[[1]], sep = " "))
# 		}
# 		if(is.na(foo$relatedToTime)){
# 			print(paste(foo$tense.y[[1]],foo$aspect.y[[1]], foo$polarity.y[[1]], foo$pos.y[[1]], foo$modality.y[[1]], foo$class.y[[1]], foo$word_form.y[[1]], sep=" "))
# 		} else {
# 			print(paste(foo$type.y[[1]], foo$value.y[[1]], foo$temporalFunction.y[[1]], foo$functionInDocument.y[[1]], foo$word_form.y[[1]], sep = " "))
# 		}
# 		print(printSentence(ToSentence(SIDtoSignal(uniqueLinkIDs[[i]], docs))))
# 	}
# }

# # Duplicate? N0 - designed for .3,.4, etc. suffixes
# linkListHostCompReport = function(uniqueLinkIDs,data){
# 	for(i in 1:length(uniqueLinkIDs)){
# 		print("")
# 		print(i)
# 		foo = subset(data,lid == uniqueLinkIDs[[i]])
# 		if(is.na(foo$timeID)){
# 			print(paste(foo$tense.3[[1]], foo$aspect.3[[1]], foo$polarity.3[[1]], foo$pos.3[[1]], foo$modality.3[[1]], foo$class.3[[1]], foo$word_form.3[[1]]), sep = " ")
# 		} else {
# 			print(paste(foo$type.7[[1]], foo$value.7[[1]], foo$temporalFunction.7[[1]], foo$functionInDocument.7[[1]], foo$word_form.7[[1]], sep = " "))
# 		}
# 		if(is.na(foo$relatedToTime)){
# 			print(paste(foo$tense.4[[1]],foo$aspect.4[[1]], foo$polarity.4[[1]], foo$pos.4[[1]], foo$modality.4[[1]], foo$class.4[[1]], foo$word_form.4[[1]], sep=" "))
# 		} else {
# 			print(paste(foo$type.8[[1]], foo$value.8[[1]], foo$temporalFunction.8[[1]], foo$functionInDocument.8[[1]], foo$word_form.8[[1]], sep = " "))
# 		}
# 		print(printSentence(ToSentence(SIDtoSignal(foo$signalID, docs))))
# 	}
# }