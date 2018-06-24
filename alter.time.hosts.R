

# Dow Jones amp Co. said it extended its \$18-a-share offer for Telerate Inc. common stock until 5 p.m. EST Nov. 9.  (wsj\_0152)
# signal: until
# host: offer :: tense="NONE" aspect="NONE" polarity="POS" pos="NOUN"
# comp: 5 p.m. EST Nov. 9 :: type="DATE" value="1989-11-09T17:00" temporalFunction="true" anchorTimeID="d68t25"
link = LIDtoLink("d68l6",docs)
removeAttributes(link)
xmlAttrs(link) <- c(lid="d68l6", relType="ENDED_BY", eventInstanceID="d68ei122", relatedToTime="d68t27", signalID="d68s26", origin="USER") 


# Although he expressed confidence that the proposed new company's cash flow would be sufficient to cover interest payments on the debt, he estimated that the company wouldn't be profitable until 1994 or later.  (wsj\_0584)
# signal: until
# host: profitable :: tense="NONE" aspect="NONE" polarity="NEG" pos="ADJECTIVE" modality="would"
# comp: 1994 or later :: type="DATE" value="1994" mod="ON_OR_AFTER" temporalFunction="false"
link = LIDtoLink("d118l33",docs)
removeAttributes(link)
xmlAttrs(link) <- c(lid="d118l33", relType="ENDED_BY", eventInstanceID="d118ei2613", relatedToTime="d118t299", signalID="d118s296")


# "Eight trading days after Oct. 12, the day before the stock market plunge, for instance, the Nasdaq Composite had fallen 4.3\%, compared with 3.3\% for the SampP 500, 3.5\% for the New York Stock Exchange Composite Index and 3.6\% for the industrial average."  (wsj\_0585)
# signal: before
# host: the day
# comp: the plunge
link = LIDtoLink("d119l57",docs)
removeAttributes(link)
xmlAttrs(link) <- c(lid="d119l57", relType="BEFORE", timeID="d119t338", relatedToEventInstance="d119ei2072", signalID="d119s206")
