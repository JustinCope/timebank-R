#' @title Finding a sentence element among ancestors of any element in a timeml tree
#' @description
#' \code{toSentence} takes an element from a timeml tree and determines whether there is a unique sentence element \code{<s>...</s>} among its ancestors.  If so, this sentence element is returned; if not, an error is printed.
#' @details
#' TimeBank 1.2 does not include any sentence elements by default.  In order for this function to successfully detect sentences, the timeml tree hosting the input element must have been created from the documents in \code{<path>/timebank_1_2/data/extra}.  In the examples below, \code{docs} is a timeml tree.
#' @param descendent Any timeml element, presumed to be part of a timeml tree
#' @return The sentence element that dominates the input timeml element, if a unique such sentence element exists; otherwise an error message.
#' @examples
#' toSentence(sidToSignal("d119s96", docs)) 
#' toSentence(eidToEvent("d4e7", docs))
#' @seealso \code{printSentence}
toSentence <- function(descendent){
	ancestorList <- xmlAncestors(descendent)
	n <- length(ancestorList)
	while(n != 0){
		ancestorSentence <- getNodeSet(ancestorList[[n]],"/s")
		if(length(ancestorSentence) == 1){
			return(ancestorSentence[[1]])
		} else {
			n = n-1
		}
	return("Error: Could not find a sentence among the ancestors of this node.")
	}
}