#!/usr/bin/env bash
# ShellCheck: Disable SC1090
# shellcheck source=/dev/null
# ShellCheck: Disable SC2034
# shellcheck disable=SC2034  # Unused variables left for readability


# TODO: Add Sanity Checker...
echo "Sourcing Files..."
source "$(pwd)"/BLING/Cecho.bfunc # ColorEcho
cecho green "Cecho Enabled."
source "$(pwd)"/conf/TarMonster.vars # Variables
source "$(pwd)"/functions/TarMonster.bfunc # Functions
# source functions/ExcludesLib.bfunc # New 07/05/2026

#############################################################################
# Main Program #                                                            #
#############################################################################
DisplayBanner
DisplayVars

echo "This script will backup the selcted application and perform any available upgrades."
Pause Press any key to continue...

SanityChecker
# Superceded by Perform-MasterBackup function.
 DoBackup
 CompressBackup
 MoveBackup


# Perform-MasterBackup
DoUpgrade
