


factors = c("pos", "tense")
xtableData = function(factors,m){
	equation = paste("~",factors[1],".x+",factors[2],".x+",factors[1],".y+",factors[2],".y", sep="")
	return(head(arrange(data.frame(xtabs(equation, data=beforeData)),desc(Freq)), n=m))
}
# This function is not referenced elsewhere in these docs. What was I doing?  A function for building xtabs for arbitrary factors of the beforeData

tenseAspectBefore = data.frame(xtabs(~ pos.x + tense.x + aspect.x + pos.y + tense.y + aspect.y, data=beforeData))

head(arrange(tenseAspectBefore,desc(Freq)), n=20)



# # ALL POSSIBLE COMBINATIONS OF 4 VAR # #
# pos.x 	tense.x 	aspect.x 	class.x
# pos.x 	tense.x 	aspect.x
# pos.x 	tense.x 				class.x
# pos.x 				aspect.x 	class.x
# 		tense.x 	aspect.x 	class.x


# pos.x 	tense.x 
# pos.x 				aspect.x
# pos.x 							class.x
# 		tense.x 	aspect.x
# 		tense.x 				class.x
# 					aspect.x 	class.x


# pos.y 	tense.y		aspect.y 	class.y

# pos.y 	tense.y		aspect.y 	
# pos.y 	tense.y				 	class.y
# pos.y 				aspect.y 	class.y
# 	 	tense.y		aspect.y 	class.y

# pos.y 	tense.y		
# pos.y 				aspect.y 	
# pos.y 						 	class.y
# 		tense.y		aspect.y 	
# 	 	tense.y					class.y
# 	 				aspect.y 	class.y


# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)
# tenseAspectBefore = data.frame(xtabs(~ , data=beforeData))
# head(arrange(tenseAspectBefore,desc(Freq)), n=20)

