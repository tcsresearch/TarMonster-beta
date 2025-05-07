## TarMonster.sh
# This script will backup and upgrade the selcted app.

## First, we will import our variables ##
# source ~/bin/TarMonster.vars

# Conmfig to end on any non-zero error status
# should fix the if stsement error exit dropping out of shell.

function SetExitOnError() {
	set -e
}

## Enable BLING/Cecho ##
echo "Batch Loading BLING Libraries..."
# source `cat ./BLING/BLING-Functions.list`

function BLING_Loader1() {
	source ./BLING/Cecho.bfunc
	source ./BLING/CommandExists.bfunc
	source ./BLING/Today.bfunc
	source ./BLING/die.bfunc
	source ./BLING/duls.bfunc
}
function CechoTest() {
	## Cecho Test ##
	cecho yellow "Cecho Enabled."
	cecho blue "BLING Functions Batch Loaded."
}

function LoadFuncVars() {
	## Source Variables ##
	source bin/TarMonster.vars

	### Next, we import our functions ###

	# source ~/bin/TarMonster.bfunc
	source bin/TarMonster.bfunc
}


##  Call Functions ###
 # CechoTest
 #  LoadFuncVars
 # BLING_Loader1

 DisplayBanner
 DisplayVars | column -t -s $'\t' # Pipes to colum for properly aligned tabbed output
 Pause This script will backup the selected application and perform any available upgrades.  Press Any Key To Continue...
 SanityChecker
 DoBackup
 CompressBackup
 MoveBackup
 DoUpgrade

