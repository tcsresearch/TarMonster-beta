### Backup.sh - This script will backup EspoCRM

### Set Variables ###
# BackupDate = 'date +%Y%m%d'
BackupSource='crm.tcshosting.net'
BackupFilePrefix='crm.tcshosting.net'
# BackupFileTar='crm.tcshosting.net_BackupDate-1.tar'
# BackupFileBz2='crm.tcshosting.net_$BackupDate-1.bz2'
BackupDestination='_Backups/2022/'

### Functions Code ###
	ShowBackupDate() {
		date +%Y%m%d
	}

	DisplayVars() {
		### Display Variables ###
#		echo BackupDate:	$BackupDate
		echo Backup Source:	$BackupSource
		echo BackupFilePrefix:	$BackupFilePrefix
#		echo BackupFileTar: 	$BackupFileTar
#		echo BackupFileBzip:	$BackupFileBz2
		echo BackupDestination:	$BackupDestination
	}

	PerformBackup() {
		### Backup & Compress / Move To Backup Folder ###
		echo Preparing EspcoCRM Backup...
		### TODO: Fix use of variables in tar/bzip2 commands
		echo Performing Backup...
		tar -cvf $BackupFilePrefix.tar $BackupSource
		echo Backup Created.
	}

	CompressBackup() {
		echo Compressing Backup...
		bzip2 -vv $BackupFilePrefix.tar 
		echo Backup Compression Completed.
		echo Moving Backup To Backup Folder...
		mv -v $BackupFilePrefix.bz2 $BackupDestination
		echo Backup File Moved.
	}	

### Call Functions ###
echo 'Backup Date: ' 
ShowBackupDate
DisplayVars
PerformBackup
CompressBackup

