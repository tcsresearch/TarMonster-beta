### Init.sh - This script will initilize TarMonster.

### Set Program Version ###
Version = '0.1'

### Display Startup Messages ###
echo "TarMonster $Version. (c) 2022 TCS Research.  All Rights Reserved."

### Source Includes ###
##  TODO: 	Create Sanity Check Function.
	Make sure error results in termination of program.
if [ -f includes/functions ]; then 
source includes/functions
else echo "FATAL ERROR: functions file not found under /includes."
fi

if [ -f includes/tarmonster.conf ]; then 
source includes/tarmonster.conf
else echo "FATAL ERROR: config file not fund under /includes."
fi

### Call Functions ###
##  TODO: Implement case for use of program.
echo 'Backup Date: ' 
ShowBackupDate
DisplayVars

### Functions disabled for testing. ###
#PerformBackup
#CompressBackup

