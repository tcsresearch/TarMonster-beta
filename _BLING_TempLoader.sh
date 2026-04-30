#!/usr/bin/env bash

cd BLING || return 1
pwd
#  source Cecho.bfunc CommandExists.bfunc Pause.bfunc Today.bfunc die.bfunc duls.bfunc
source $(cat BLING-Functions.list)
cd ... || return # use instead of 'cd -' (per shellcheck)
