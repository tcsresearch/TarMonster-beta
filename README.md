# TarMonster
An experimental backup script utilizing tar, gzip, &amp; bzip2.  WIP.

<hr>
TarMonster gets its name from both the Linux program tar and a Scooby-Doo villain.

It is intended to allow for automatic file naming with the date of the backup as part of the filename, e.g. backup-202220626-1.
<br>
For now, the primary focus is to create backups and compress them.  Restoring backups will come later.

<hr>
## Update April 19, 2023
- Uploaded working copy.
- Added and enabled ColorEcho (Cecho) functionality.
- Created _DepricatedFolders Folder.
  - Moved previous non-working copy to _OldScripts2.
  - Moved original files to _OldScripts.
- File & folder reorganization.
  - Added functions folder.
  - Added libraries folder.
  - Added conf folder.
  - Begin splitting master config file into seperate ones.
  - Moved config files to conf folder.
  - Moved Colors.shlib to libraries folder.
  - Set main script to use new file/folder locations.
  - Renamed old main scripts.

<hr>

## TODO
- Integrate BLING functionality.
- Finish implementation of config file split.
- Add Gzip functionality.
- Add BackupFileName increments (Currently as 20230419; needs to be 20230419-1 and increment with each backup that day.)
- Enable Plugin Functionality.

<hr>

## Proposed Plugins
- [PLUGIN] [EspoCRM-PostUpdateChecker] Check for new releases after upgrading so as to rerun the DoUpgrade function again.
- [PLUGIN] [WebRoot-Utility] Backup/Restore functionality for /var/www/html, etc.
- [PLUGIN] [DB-Utility] Backup/Restore MySQL/MariaDB Databases w/ Optional Encryption.
- [PLUGIN] [BackupCompare] Compares 2 TarMonster archives.
