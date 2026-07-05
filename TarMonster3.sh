#!/usr/bin/env bash
# ShellCheck: Disable SC1090
# shellcheck source=/dev/null
# ShellCheck: Disable SC2034
# shellcheck disable=SC2034  # Unused variables left for readability


# echo "Enabling Cecho..."
# FIXME: Add Cecho.bfunc
# source Cecho.bfunc

# TODO: Add Sanity Checker...
echo "Sourcing Files..."
source BLING/Cecho.bfunc # ColorEcho
cecho green "Cecho Enabled."
source bin/TarMonster.vars # Variables
source bin/TarMonster.bfunc # Functions
# source functions/ExcludesLib.bfunc # New 07/05/2026

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
