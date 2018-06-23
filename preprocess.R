
########## Loading the files, creating the xml tree ############

source('preprocessing.functions.R') # Functions: getting Documents, Unique IDs, word_form Cleaning

# cat("\n", file="index.txt", sep="", append=TRUE)
path = "~/Dropbox/cope.dissertation/timebank_1_2/data/extra/"
index = getIndex(path,"index.txt") # Gets the list of file names from working directory
documents = getDocuments(path,index) # Processes each file, creates list of xml objects

makeAllDocsUnique(documents) # Run UniqueXID over all ID categories of all documents

docs = newXMLNode("documents") # Creates docs, the xml root
sink("sink.txt") # Diverts addChildren's garbage to file
addChildren(docs,documents) # each xml document in documents becomes a child of xml root 'docs'
sink() # turns off diversion
file.remove("sink.txt") # removes garbage

rm(index,documents,makeAllDocsUnique,makeUnique,UniqueXID,getDocuments,getDocument,getIndex)









