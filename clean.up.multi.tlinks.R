# Removes tlink corresponding to misapplied since signal
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d166l4']"))


# Remove two TLINKS, because they duplicate "until" signals (used for conjunction structures)
	# Removes tlink corresponding to until signal conjoined verb in host, strangle
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d6l79']"))
	# Removes tlink corresponding to until signal conjoined verb in complement, maintained
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d54l6']"))


# Remove 4 TLINKS, because they duplicate "before" signals (used for measure phrases)
	# the day before the stock market plunge
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d119l105']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d119l57']"))
	#in an interview several months before he entered
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d159l76']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d159l77']"))

# Remove 7 TLINKS, because they duplicate "after" signals (used for measure phrases)
	# eight trading days after
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d119l107']"))
	# it wasn't until twenty years after x that
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d4l25']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d4l26']"))
	# comes barely a month after Qantas suspended
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d8l27']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d8l28']"))
	# resumed work nearly two months after his team was blocked
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d17l32']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d17l33']"))

# Remove 2 TLINKS, because they duplicate "after" signals -- not quite measure phrase
	# agreed to pay if, after five years, the value isn't as high as...
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d118l62']"))
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d118l93']"))


# Remove 2 TLINKS, because they duplicate "before" signals (used for conjunction structures)
	# Removes tlink corresponding to before signal conjoined verb in complement, reducing
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d115l28']"))
	# Removes tlink corresponding to before signal conjoined verb in host, seize
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d145l33']"))

# Remove 1 TLINK, because it duplicates "after" signals in conjoined with adjunct, owning
	removeNodes(getNodeSet(docs,"//TLINK[@lid='d151l11']"))




