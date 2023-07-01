## Upgrade-Mantis.sh
# This script will backup and upgrade MantisBT

## First, we will import our variables ##
source ~/bin/MantisBT.vars

### Next, we import our functions ###

source ~/bin/MantisBT.bfunc

##  Call Functions ###
 DisplayVars
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

