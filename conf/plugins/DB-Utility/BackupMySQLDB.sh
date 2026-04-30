#!/usr/bin/env bash

# 2.10.1. MySQL Backups
# MySQL databases are easy to backup using the mysqldump command:

# TODO: Create functions.
#	Use as a TarMonster Plugin.
#	Add Encyption Functionality To Secure Data.


# MORE TODO: [ TESTABLE ] Add variables for UserName, DBName, OutputFile, and InputFile.
#	           Also add cmdline options and vars for folder locations and compression via TarMonster.
#	           Need SanityCheck to ensure a valid DB isn't accidentally or maliciously overwrittern via restore.
#		         Use dialog to pause; autobackup DB before restore.


# Assign UserName/Password/DBName to commandline.
# TODO: Enable configuration in BackupMySQLDB.conf
UserName="$1"
Password="$2"
DBName="$3"

# Assign InputFile & OutputFile
# TODO: Enable configuration in BackupMySQLDB.conf
InputFile="mysql.db" # Change this!
OutputFile="MySQLBackup.sql" # Change This!

function MySqlBackup() {
# TODO: Prompt for UserName/Password/DBName via read command.
#        Also allow these to be stored in a BackupMySQLDB.conf file.
  echo "mysqldump -u<username> -p<password> <database name> > <output file>"
  mysqldump -u"$UserName" -p"$Password" "$DBName" "$OutputFile"
}

function MySqlRestore() {
# To restore a backup you will need to have a clean database. Then run:

  echo "mysql -u<username> -p<password> <database name> < <input file>"
  # TODO: Add sanity check to confirm clean (empty) DB; fail if not.
  #       Also prompt with a requirement such as a random string generated each time to confirm restore.

  ### DISABLED FOR SECURITY TO PREVENT ACCIDENTAL DB OVERWRITES.
  ### mysql -u"$UserName" -p"$Password" "$DBName" < "$InputFile"
}
