## DisplayVarsOnly.sh
# This script will display the variables for the app or plugin.

## First, we will import our variables ##
source ~/bin/MantisBT.vars

### Next, we import our functions ###

source ~/bin/MantisBT.bfunc

##  Call Functions ###
 DisplayVars | column -t -s $'\t'
# SanityChecker
# DoBackup
# CompressBackup
# MoveBackup
# DoUpgrade

