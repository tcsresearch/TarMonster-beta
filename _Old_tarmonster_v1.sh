## tarmonster.sh
# This is the main script for TarMonster.

## First, we will import our variables ##
# TODO: Add Sanity Check.
source ./bin/TarMonster.vars

### Next, we import our functions ###
# TODO: Add Sanity Check.
source ./bin/TarMonster.bfunc

### Enable ColorEcho Library ###
# TODO: Add Sanity Check.
source ./bin/Colors.shlib

##  Call Functions ###
 DisplayBanner
 DisplayVars
 SanityChecker
 
 DoBackup
 CompressBackup
 MoveBackup
 
 # For EspoCRM Only
 # DoUpgrade

