# TarMonster
An experimental backup & restore script utilizing tar, gzip, &amp; bzip2.  WIP.

<hr>
<ins> <h3> Why Call It TarMonster? </h3> </ins> <br>
TarMonster gets its name from both the Linux program tar and a Scooby-Doo villain.

It is intended to allow for automatic file naming with the date of the backup as part of the filename, e.g. backup-202220626-1.

For now, the primary focus is to create backups and compress them.  Restoring backups will come later.

<hr>

## Update August 1, 2023 - UNTESTED!
- Uploaded test code to _TarMonster-20230701-1 folder.
- Completed majority of config file split.
- Renamed $AppName and $AppVersion to $ProgName and $ProgVersion.
- Re-added $AppName to define app we are backing up, such as EspoCRM.
- Begin implementing plugin functionality.

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

## Update June 11, 2023
- Uploaded working files.

<hr>

## TODO
- [ ] Integrate BLING functionality.
- [x] :heavy_check_mark: Merge code from most recent EspoCRM tests. :heavy_check_mark: - DONE! Needs Testing.
- [x] :heavy_check_mark: Finish implementation of config file split. :heavy_check_mark: - DONE! Needs testing.
- [ ] Add Gzip functionality.
- [ ] Add BackupFileName increments (Currently as 20230419; needs to be 20230419-1 and increment with each backup that day.)
- [ ] :ballot_box_with_check: Enable Plugin Functionality. :ballot_box_with_check: - In Progress.

<hr>

## Proposed Plugins - Applications
- [IN PROGRESS] :ballot_box_with_check: [EspoCRM] Backup/Restore Functionality For EspoCRM. :ballot_box_with_check:
- [IN PROGRESS] :ballot_box_with_check: [MantisBT] Backup/Restore Functionality For MantisBT. :ballot_box_with_check:
- [PLANNED] [Apache2] Backup/Restore Functionality For Apache2 (httpd).
- [PLANNED] [PhpMyAdmin] Backup/Restore Functionality For PhpMyAdmin.
- [PLANNED] [PhpSysInfo] Backup/Restore Functionality For PhpSysInfo.
- [PLANNED] [WordPress] Backup/Restore Functionality For WordPress.

<hr> 

## Proposed Plugins - Utilities
- [IN PROGRESS] :ballot_box_with_check: [DB-Utility] Backup/Restore MySQL/MariaDB Databases w/ Optional Encryption - In Progress on our MantisBT site. :ballot_box_with_check:
- [PLANNED] [EspoCRM-PostUpdateChecker] Check for new releases after upgrading so as to rerun the DoUpgrade function again.
- [PLANNED] [WebRoot-Utility] Backup/Restore functionality for /var/www/html, etc.
- [PLANNED] [BuildRoot-Utility] Backup/Restore functionality for rpmbuild folder on Fedora/RHEL.
- [PLANNED] [UserDir-Utility] Backup/Restore functionality for user directories, such as home/user1, etc.
- [PLANNED] [BackupCompare] Compares 2 TarMonster archives.

