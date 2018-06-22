# timebank-mining
R and Python scripts for collecting and analyzing data from the TimeBank corpus

## preprocessing.R
A variety of functions are defined in order to prepare the timebank data for analysis, and the entire corpus is loaded into a single xml tree.

To use this code, open the R interpreter and enter:

`source(preprocessing.R)`

You should do this within the directory `/.../timebank_1_2/data/extra` rather than `/.../timebank_1_2/data/timeml`.  The texts in the former directory have *extra* annotations; the only one relevant to this script is the `<s>...</s>` which demarcates sentence boundaries.  

N.B. The file `preprocessing.R` must be in the `/.../timebank_1_2/data/extra` directory as well.  (So must the file `index.txt`, but it should already be present in the distribution from the LDC.)

If all goes well, you now have xml tree called `docs` which you may query with XPATH / getNodeSet().  You also have at your disposal the following functions:

1. getSentences - Applied to an xml tree it returns all sentences within that tree as xml, 
1. printSentence - prints a sentence
1. printDocument - prints document 
2. getEventInstances: 

= function(top,event){ # Takes an input of type EVENT
	eid = xmlGetAttr(event,"eid")
	# builds a search for MAKEINSTANCE objects with attribute eventID equal to input
	search = paste("//MAKEINSTANCE[@eventID='", eid, "']",sep="") 
	getNodeSet(top,search) # executes search, returning hits
}

3. getSentenceEventInstances 
= function(sentence){
	x = getEvents(sentence)
	y = length(x)
	if(y>0){
		z <- vector("list", y)
		for(i in 1:y){
			a = getEventInstances(sentence,x[[i]])
			z[[i]] = c(x[[i]],a)
		}
		return(z)
	}
}

4. frameInstances 
= function(event_instance_list){
	x = length(event_instance_list)
	y = vector("list",x)
	for(i in 1:x){
		y[[i]] = event_instance_list[[i]][[2]]
	}
	sapply(y,xmlAttrs)
}

5. getSentenceEntities - sentence input, 
= function(sentences){
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
					getEventInstances(eid)
				}
			}
		}
	}
	else print("No sentences")
}

6. getValue - takes xml node and returns text as Attribute-Value pairs
7. makeDataFrame - takes a set of xml nodes and builds a data frame



## examples.R
Some data structures are built as illustrations.

## Python scripts

Still need to be uploaded to repository, after I find them on previous hard drive.
