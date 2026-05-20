#!/usr/bin/env bash


## DisplayVarsOnly.sh
# This script will display the variables for the app or plugin.

## First, we will import our variables ##
# shellcheck source=/dev/null
source ~/bin/MantisBT.vars

### Next, we import our functions ###
# shellcheck source=/dev/null
source ~/bin/MantisBT.bfunc

##  Call Functions ###
 DisplayVars | column -t -s $'\t'
# SanityChecker
# DoBackup
# CompressBackup
# MoveBackup
# DoUpgrade

