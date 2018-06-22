
################ Reading the Files (using an index file) ##############

# requires an index file, with the name of one file to be loaded per line
# might be replaced -- R functions for reading the contents of path directory
# path is a variable defined in preprocess.R -- the path must contain index_file and all of the documents listed in index_file
getIndex = function(index_file){
	index_file = paste(path,index_file,sep="")
	strsplit(readLines(index_file, warn=FALSE), " ")[[1]]
}

getDocument = function(file){ # Input: file name
	doc = xmlRoot(xmlTreeParse(file, useInternal = TRUE)) # Parse file to xml object, make root 'doc'
	addChildren(doc, newXMLNode("file_name",file)) # Adds a child with the original file name to doc
} # useInternal maintains the xml document, for use with XPATH searches

# Gets the documents, makes them xml
getDocuments = function(index){ # Input: index of file names
	n = length(index) # Number of file names in the index
	x = vector("list",n) # Creates a vector of type 'list' (could have been 'logical' or ...), length n
	if(n>0){ # Checks whether vector length is greater than 0, if so:
		for(i in 1:n){ # Indices for the n file names in the index, the n arguments of the vector x
			fullPath = paste(path,index[[i]],sep="")
			x[[i]] = getDocument(fullPath) # Parses file, adds file name (key, value) to document attributes
			id = paste(c("d",i), collapse="") # Creates a document ID, e.g. "d1", "d2", ...
			xmlAttrs(x[[i]]) <- c(DocID=id) # Adds DocID (key, value) to document attributes
		} # This is just a right curly brace (end of for-loop)
	return(x) # Output: vector of xml documents
	} # And another curly brace (end of if-block)
} # And another (end of function definition)


####### Making IDs unique across all documents #######

# This is necessary because the eids, eiids, sids, lids, tids were only unique within documents, not across the corpus
UniqueXID = function(timeml_node, id_name){ # Makes names of any ID attribute unique
	dID = xmlGetAttr(timeml_node,"DocID") # Gets the document ID of the input document node
	search = paste("//*[@", id_name, "]", sep="") # Creates a XPATH search string for <id_name>
	hits = getNodeSet(timeml_node,search) # Get all nodes matching search in document
	n = length(hits) # n matching documents
	if(n>0){ # If n is greater than 0
	for(i in 1:n){ # Then we loop n times
		value = xmlGetAttr(hits[[i]],id_name) # Get the <id_name> of the <i>th matching node
		insert = paste(dID, value, sep="") # Create a string by concatenating document ID and the <id_name>
		xmlAttrs(hits[[i]])[[id_name]] = insert # Insert this unique string for the <id_name>
	}} # This ends the for loop and the conditional
} # No output, but the <id_name> attribute has been modified for all nodes matching search


# Take a document and run UniqueXID over all of its ID categories
makeUnique = function(doc){ # Get the document
	dID = xmlGetAttr(doc,"DocID") # Looks like I don't need this after all
	ids = c("eid", "eiid", "eventID", "tid", "sid", "lid", "timeID", "signalID", "eventInstanceID", "subordinatedEventInstance", "relatedToTime", "relatedToEventInstance", "anchorTimeID", "endPoint", "beginPoint")
	n = length(ids) # How many types of ID categories are there?
	for(i in 1:n){ # Loop
		UniqueXID(doc,ids[[i]]) # Make the IDs of all categories unique in the document
	} # End
} # No output, xml documents nodes are modified in place


# Run UniqueXID over all ID categories of all documents
makeAllDocsUnique = function(corpus){ # input: list of xml nodes
	n = length(corpus) # There are n documents
	for(i in 1:n){ # For each document:
		makeUnique(corpus[[i]]) # Make it unique.
	} # Done
} # output: none; the xml nodes are modified in place


############# Adding the word_form attribute ################

# Cleans up the content of the node, extra spaces, line breaks, lowercase
# I use this with wordForms, which creates <word_form> attribute from node content
# Does getChildrenStrings do this for me?
cleanNode = function(node){ # input: xml node
	extracted = paste(getChildrenStrings(node),collapse=" ") # Gets the content (text) of the node
	# ^^ why not xmlValue(node)?
	# stripped = gsub("<.*?>"," ",extracted) # originally, I thought I needed to remove xml tags, but apparently I changed my mind?
	compressed = gsub(" +"," ",extracted) # Remove extra spaces
	noBreaks = gsub("\n"," ",compressed) # Remove line breaks
	lowered = tolower(compressed) # Lowercase
	return(lowered) # !
} # output: a string with extra spaces and line breaks removed, to lowercase


# For EVENT, TIMEX3 and SIGNAL tags = converts tagged text content into value of new <word_form> attribute
wordForms = function(nodes){ # input: a list of xml nodes with text content
	for(i in 1:length(nodes)){ # How many nodes are there?  Loop that many times.
		addAttributes(nodes[[i]],"word_form"=cleanNode(nodes[[i]])) # Adding the attribute-value pair
	} # End of for loop
}# output: none; modifies input nodes in place

# This is for standardizing the various data frames so that e.g. link.report applies to all (sinceData,beforeData, in particular do not have timeID column)
cbind.fill <- function(...){
    nm <- list(...) 
    nm <- lapply(nm, as.matrix)
    n <- max(sapply(nm, nrow)) 
    do.call(cbind, lapply(nm, function (x) 
        rbind(x, matrix(, n-nrow(x), ncol(x))))) 
}
