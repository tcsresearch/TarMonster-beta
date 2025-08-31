## tarmonster3.sh
# This is the Cecho Enabled / File & Folder Restructured main script for TarMonster.
# Currently set as DisplayVarsOnly.

## First, we will import our Master Config File ##
# TODO: Add Sanity Check.
source ./conf/TarMonster.conf

## Second, we will import our additional config files.
# TODO: Add Sanity Check.
source ./conf/Application.conf # Will eventually become plugins under conf.d or plugins.d
source ./conf/Compression.conf
source ./conf/FilesFolders.conf

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
