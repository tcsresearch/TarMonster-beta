#!/usr/bin/env bash

## Upgrade-Mantis.sh
# This script will backup and upgrade MantisBT

## First, we will import our variables ##
# shellcheck source=/dev/null
source ~/bin/MantisBT.vars

### Next, we import our functions ###
# shellcheck source=/dev/null
source ~/bin/MantisBT.bfunc

##  Call Functions ###
 DisplayVars
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

