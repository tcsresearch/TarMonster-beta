# tarmonster
An experimental backup script utilizing tar, gzip, &amp; bzip2.  WIP.

TarMonster gets its name from both the Linux program tar and a Scooby-Doo villain.

It is intended to allow for automatic file naming with the date of the backup as part of the filename, e.g. backup-202220626-1.
For now, the primary focus is to create backups and compress them.  Restoring backups will come later.

## Update April 19, 2023
- Uploaded working copy.
- Moved previous non-working copy to _OldScripts2.
- Moved original files to _OldScripts.

## TODO
- Rename files (TarMonster was orignally developed to assist in upgrading EspoCRM).
- Integrate BLING/Cecho functionality.
- Add Gzip functionality.
- Add BackupFileName increments (Currently as 20230419; needs to be 20230419-1 and increment with each backup that day.)
- Check for new releases after upgrading so as to rerun the DoUpgrade function again.
