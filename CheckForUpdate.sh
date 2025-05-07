## TarMonster.sh
# This script will backup and upgrade the selcted app.

## First, we will import our variables ##
source ~/bin/TarMonster.vars

### Next, we import our functions ###

source ~/bin/TarMonster.bfunc

##  Call Functions ###
 DisplayBanner
 DisplayVars | column -t -s $'\t' # Pipes to colum for properly aligned tabbed output
 Pause This script will perform any available upgrades.  Press Any Key To Continue...
 SanityChecker
#  DoBackup
#  CompressBackup
#  MoveBackup
 DoUpgrade

