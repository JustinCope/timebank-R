
# 	class
# pos	OCCURRENCE	STATE	I_STATE	REPORTING	ASPECTUAL	PERCEPTION	I_ACTION
# 	VERB		2614	244	435	986	229	48	566
# 	NOUN		1548	411	94	38	29	0	105
# 	ADJECTIVE	47		147	55	4	3	0	10
# 	PREPOSITION	0		28	0	0	0	0	0
# 	OTHER		9		288	0	0	1	0	1



# 	class.x
# pos.x	OCCURRENCE	STATE	I_STATE	REPORTING	ASPECTUAL	PERCEPTION	I_ACTION
#   VERB		15	1	0	1	2	0	2
# 	NOUN		5	2	0	0	0	0	1
# 	ADJECTIVE	0	0	0	0	0	0	0
# 	PREPOSITION	0	0	0	0	0	0	0
# 	OTHER		0	0	0	0	0	0	0



allBefore <- matrix(c(4443,679,20,1),ncol=2,byrow=TRUE)
colnames(allBefore) <- c('event','state') 
rownames(allBefore) <- c('all','before')
allBefore <- as.table(allBefore)
allBefore

allAfter <- matrix(c(4443,679,47,7),ncol=2,byrow=TRUE)
colnames(allAfter) <- c('event','state') 
rownames(allAfter) <- c('all','after')
allAfter <- as.table(allAfter)
allAfter

allBeforeComp <- matrix(c(4443,679,11,0),ncol=2,byrow=TRUE)
colnames(allBeforeComp) <- c('event','state') 
rownames(allBeforeComp) <- c('all','beforeComp')
allBeforeComp <- as.table(allBeforeComp)
allBeforeComp
summary(allBeforeComp)

allAfterComp <- matrix(c(4443,679,11,0),ncol=2,byrow=TRUE)
colnames(allAfterComp) <- c('event','state') 
rownames(allAfterComp) <- c('all','afterComp')
allAfterComp <- as.table(allAfterComp)
allAfterComp
summary(allAfterComp)

beforeAfterDif <- matrix(c(46,7,20,1),ncol=2,byrow=TRUE)
colnames(beforeAfterDif) <- c('event','state')
rownames(beforeAfterDif) <- c('after','before')
beforeAfterDif <- as.table(beforeAfterDif)
beforeAfterDif
summary(beforeAfterDif)
