#!/usr/bin/env bash
#GetCurrentAppVersion-ng.sh - Consolidate GetCurrentAppVersion.sh, GetCurrentAppVersion2.sh, and GetCurrentAppVersion3.sh into a single script.

function GetCurrentAppVersion_1() {
  cd crm.tcshosting.net || return 1
  echo "Current EspoCRM Vesrion Is:"
  php command.php version
  echo " "
  php command.php version > VERSION
  echo "Saved Current EspoCRM Version to crm.tcshosting.net/VERSION"
  cd ... || return # use instead of 'cd -' (per shellcheck)
}

function GetCurrentAppVersion_2() {
  cd crm.tcshosting.net || return 1
  php -r "echo 'Current EspoCRM Vesrion Is:' "  && php command.php version
  echo " "
  php command.php version > VERSION
  echo "Saved Current EspoCRM Version to crm.tcshosting.net/VERSION"
  cd ... || return # use instead of 'cd -' (per shellcheck)
}

function GetCurrentAppVersion_3() {
  php -r "echo 'Current App Version: '; "  && php crm.tcshosting.net/command.php version 
  }

  ###########################################################################################
  # Main Program #                                                                          #
  ###########################################################################################

  echo "To use this script, source it, then run one of the following:"
  echo "   GetCurrentAppVersion_1"
  echo "   GetCurrentAppVersion_2"
  echo "   GetCurrentAppVersion_3"
  echo " "
  
