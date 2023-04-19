## tarmonster3.sh
# This is the Cecho Enabled / File & Folder Restructured main script for TarMonster.

## First, we will import our Master Config File ##
# TODO: Add Sanity Check.
source ./conf/TarMonster.conf

### Next, we import our functions ###
# TODO: Add Sanity Check.
source ./functions/TarMonster.bfunc

### Enable ColorEcho Library ###
# TODO: Add Sanity Check.
source ./libraries/Colors.shlib

##  Call Functions ###
 DisplayBanner2
 DisplayVars2
 SanityChecker
 
 # DoBackup
 # CompressBackup
 # MoveBackup
 
 
 # For EspoCRM Only
 # DoUpgrade
