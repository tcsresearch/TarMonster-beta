#!/usr/bin/env bash
#GetCurrentAppVersion-ng.sh - Consolidate GetCurrentAppVersion.sh, GetCurrentAppVersion2.sh, and GetCurrentAppVersion3.sh into a single script.

### --- Define Variables --- ###
CRM_Folder="$(pwd)/crm.tcshosting.net"
CRM_VersionFile="EspoCRM_VERSION"

### --- Display Banner --- ###
function DisplayBanner() {
  echo "CRM Folder: $CRM_Folder"
  echo "CRM Version File: $CRM_VersionFile"
  echo " "
}
  
### --- Define Functions --- ###
function GetCurrentAppVersion_1() {
  cd "$CRM_Folder" || return 1
  echo "Current EspoCRM Version Is:"
  php command.php version
  echo " "
  php command.php version > "$CRM_VersionFile"
  echo "Saved Current EspoCRM Version to $CRM_Folder/$CRM_VersionFile"
  cd ... || return # use instead of 'cd -' (per shellcheck)
}

function GetCurrentAppVersion_2() {
  cd "$CRM_Folder" || return 1
  php -r "echo 'Current EspoCRM Version Is:' "  && php command.php version
  echo " "
  php command.php version > "$CRM_VersionFile"
  echo "Saved Current EspoCRM Version to $CRM_Folder/$CRM_VersionFile"
  cd ... || return # use instead of 'cd -' (per shellcheck)
}

function GetCurrentAppVersion_3() {
  php -r "echo 'Current App Version: '; "  && php $CRM_Folder/command.php version 
  }

  ###########################################################################################
  # Main Program #                                                                          #
  ###########################################################################################

  echo "To use this script, source it, then run one of the following:"
  echo "   GetCurrentAppVersion_1 - Gets version (BASH echo) and writes to file (two-lines)."
  echo "   GetCurrentAppVersion_2 - Gets version (PHP echo) and writes to file (single line)."
  echo "   GetCurrentAppVersion_3 - Gets version (PHP echo) without writing to file (single line). "
  echo " "
  
