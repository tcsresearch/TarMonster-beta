### Backup.sh - This script will backup EspoCRM

### Set Variables - This section to be depricated by include/tarmonster.conf ###
# BackupDate = 'date +%Y%m%d'
BackupSource='crm.tcshosting.net'
BackupFilePrefix='crm.tcshosting.net'
# BackupFileTar='crm.tcshosting.net_BackupDate-1.tar'
# BackupFileBz2='crm.tcshosting.net_$BackupDate-1.bz2'
BackupDestination='_Backups/2022/'

### Display Program Banner ###
# Move to Functions?
echo TarMonster Backup - A TCS Research Project.

### Source Functions ###
# TODO: Modify sanity check to exit if file not found.
FILE=functions
if [ -f "$FILE" ]; then
    echo "$FILE file found."
else 
    echo "$FILE file missing or not found."
fi

echo Loading Functions...
. functions
echo Functions Loaded.


### Call Functions ###
echo 'Backup Date: ' 
ShowBackupDate
DisplayVars
PerformBackup
CompressBackup

