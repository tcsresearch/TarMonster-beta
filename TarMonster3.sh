# echo "Enabling Cecho..."
# FIXME: Add Cecho.bfunc
# source Cecho.bfunc

echo "Sourcing Files..."
source BLING/Cecho.bfunc
source bin/TarMonster.vars
source bin/TarMonster.bfunc
cecho green "Cecho Enabled."

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
