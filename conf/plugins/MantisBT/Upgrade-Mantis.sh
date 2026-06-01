#!/usr/bin/env bash
# ShellCheck: Disable SC1090
# shellcheck source=/dev/null
# ShellCheck: Disable SC2034
# shellcheck disable=SC2034  # Unused variables left for readability

## Upgrade-Mantis.sh
# This script will backup and upgrade MantisBT

## First, we will import our variables ##
source ~/bin/MantisBT.vars

### Next, we import our functions ###

source ~/bin/MantisBT.bfunc

##  Call Functions ###
 DisplayVars
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

