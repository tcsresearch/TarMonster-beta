# 2.10.1. MySQL Backups
# MySQL databases are easy to backup using the mysqldump command:

# TODO: Create functions.
#	Use as a TarMonster Plugin.
#	Add Encyption Functionality To Secure Data.


# MORE TODO: Add variables for UserName, DBName, OutputFile, and InputFile.
#	     Also add cmdline options and vars for folder locations and compression via TarMonster.
#	     Need SanityCheck to ensure a valid DB isn't accidentally or maliciously overwrittern via restore.
#		Use dialog to pause; autobackup DB before restore.

function MySqlBackup() {
echo "mysqldump -u<username> -p<password> <database name> > <output file>"
mysqldump -u$UserName -p$Password $DBName $OutputFile
}

function MySqlRestore() {
# To restore a backup you will need to have a clean database. Then run:

echo "mysql -u<username> -p<password> <database name> < <input file>"
### DISABLED FOR SECURITY TO PREVENT ACCIDENTAL DB OVERWRITES.
### mysql -u$UserName -p$Password $DBName < $InputFile
}



