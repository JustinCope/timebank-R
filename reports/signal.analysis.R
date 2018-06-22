#Find Signals with Duplicate Links

# for(i in 1:length(beforeLinks)){
#  print(xmlGetAttr(beforeLinks[[i]],"signalID"))
# }

# [1] "d1s13"
# [1] "d3s43"
# [1] "d4s4"
# [1] "d10s61"
# [1] "d24s44"
# [1] "d33s2222"
# [1] "d33s2186"
# [1] "d46s44"
# [1] "d58s15"
# [1] "d61s13"
# [1] "d112s98"
# [1] "d115s48"*
# [1] "d115s48"*
# [1] "d116s146"
# [1] "d119s206"*
# [1] "d119s206"*
# [1] "d119s206"*
# [1] "d134s18"
# [1] "d139s102"
# [1] "d145s91"*
# [1] "d145s91"*
# [1] "d145s180"
# [1] "d146s224"
# [1] "d152s98"
# [1] "d159s154"*
# [1] "d159s154"*
# [1] "d159s154"*
# [1] "d164s9"
# [1] "d164s152"

sort(table(extractIDfromAll(beforeLinks,"signalID")))

#   d10s61  d112s98 d116s146  d134s18 d139s102 d145s180 d146s224  d152s98 
#        1        1        1        1        1        1        1        1 
# d164s152   d164s9    d1s13   d24s44 d33s2186 d33s2222    d3s43   d46s44 
#        1        1        1        1        1        1        1        1 
#     d4s4   d58s15   d61s13  d115s48  d145s91 d119s206 d159s154 
#        1        1        1        2        2        3        3 