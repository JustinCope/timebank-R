# timebank-R
R functions and scripts for collecting and analyzing data from the TimeBank 1.2 corpus

## main.R
Calls `packages.R`, `preprocessing.functions.R`, `preprocess.R`, `paths.R`, `other.functions.R`, etc. Some data structures are built.  (These should be factored out of this script and included in various special purpose scripts.)

## preprocessing.functions.R
A variety of functions are defined in order to prepare the Timebank data for analysis. 

## preprocess.R
The Timebank corpus is loaded into a single xml tree, with various modifications.

## paths.R
These functions are useful for navigating the Timebank XML tree.

## other.functions.R
Miscellaneous functions.R



