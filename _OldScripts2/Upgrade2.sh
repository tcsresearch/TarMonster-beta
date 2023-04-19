## Upgrade-crm.sh
# This script will backup and upgrade ESPOCRM

### Define Variables ###
## Today="date + %Y%m%d" # TODO: Add incremental functionality
## NOW=$( date '+%F_%H:%M:%S' )
Today=$( date '+%Y%m%d' )
BackupFolder="_Backup"
AppFolder="crm.tcshosting.net"
BackupFileName="crm.tcshosting.net"
BackupCMD="tar -cvf"
CompressCMD="bzip2 -vv"
FullBackupPath=$( $BackupFolder/BackupFileName-Today )

### Now we declare our functions ###

function DisplayVars() {
	echo "Today Is: $Today"
	echo "Backup Folder: $BackupFolder"
	echo "Backup FileName: $BackupFileName"
	echo " "
	echo "Full Backup Path: $FullBackupPath"
	echo "Backup Command: $BackupCMD"
	echo "Compress Command: $CompressCMD"
}

function DoBackup() {
	# tar -cvf crm.tcshosting.net.tar crm.tcshosting.net
	$BackupCMD $BackupFolder/$BackupFileName-$Today $AppFolder
	# bzip2 -vv crm.tcshosting.net.tar
	$CompressCMD $BackupFolder/$BackupFileName
}

function DoUpgrade() {
	cd crm.tcshosting.net
	php command.php upgrade
	cd -
}

###  Call Functions ###
 DisplayVars
#  DoBackup
# DoUpgrade

