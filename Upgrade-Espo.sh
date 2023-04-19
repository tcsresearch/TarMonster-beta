## Upgrade-crm.sh
# This script will backup and upgrade ESPOCRM

## First, we will import our variables ##
source ~/bin/EspoCRM.vars

### Next, we import our functions ###

source ~/bin/EspoCRM.bfunc

##  Call Functions ###
 DisplayVars
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

