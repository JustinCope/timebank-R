# timebank-R
R functions and scripts for collecting and analyzing data from the TimeBank 1.2 corpus

## main.R
Calls `packages.R`, `preprocessing.functions.R`, `preprocess.R`, `paths.R`, `other.functions.R`, etc.  Eventually, all -- or in any case, most -- functions should be factored out of these files and packaged as `timebankr`.  

`main.R` also builds some data structures. These should be factored out of this script and included in various special purpose scripts.  Ultimately, `main.R` will load packages, read Timebank, and store it as an xml tree, perhaps with some cleanup, pruning, etc.


## preprocessing.functions.R
A variety of functions are defined in order to prepare the Timebank data for analysis. 

## preprocess.R
The Timebank corpus is loaded into a single xml tree, with various modifications.

## paths.R
These functions are useful for navigating the Timebank XML tree.

## other.functions.R
Miscellaneous functions.R



