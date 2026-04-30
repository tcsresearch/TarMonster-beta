## Upgrade-crm.sh
# This script will backup and upgrade ESPOCRM

## First, we will import our variables ##
source ~/bin/EspoCRM.vars

### Next, we import our functions ###

source ~/bin/EspoCRM.bfunc

##  Call Functions ###
 DisplayBanner
 DisplayVars | column -t -s $'\t' # Pipes to colum for properly aligned tabbed output
 Pause This script will backup EspoCRM and perform any available upgrades.  Press Any Key To Continue...
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

