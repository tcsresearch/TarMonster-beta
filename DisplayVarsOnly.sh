#!/usr/bin/env bash

## DisplayVarsOnly.sh
# This script will display the variables for TarMonster.

## First, we will import our variables ##
# shellcheck source=/dev/null
source ~/bin/TarMonster.vars

### Next, we import our functions ###
# shellcheck source=/dev/null
source ~/bin/TarMonster.bfunc

##  Call Functions ###
 DisplayVars | column -t -s $'\t'
# SanityChecker
# DoBackup
# CompressBackup
# MoveBackup
# DoUpgrade

