getIndex <- function(path,index_file){
	index_file = paste(path,index_file,sep="")
	strsplit(readLines(index_file, warn=FALSE), " ")[[1]]
}