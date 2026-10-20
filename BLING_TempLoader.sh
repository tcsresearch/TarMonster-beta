#!/usr/bin/env bash

cd BLING || return 1
pwd
#  source Cecho.bfunc CommandExists.bfunc Pause.bfunc Today.bfunc die.bfunc duls.bfunc
# shellcheck source=/dev/null
source "$(cat BLING-Functions.list)"
cd ... || return # use instead of 'cd -' (per shellcheck)
