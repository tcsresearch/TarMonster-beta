## DisplayVarsOnly.sh
# This script will display the variables for TarMonster.

## First, we will import our variables ##
source ~/bin/TarMonster.vars

### Next, we import our functions ###

source ~/bin/TarMonster.bfunc

##  Call Functions ###
 DisplayVars | column -t -s $'\t'
# SanityChecker
# DoBackup
# CompressBackup
# MoveBackup
# DoUpgrade

