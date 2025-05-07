## Setup Vars ###
AppFolder='crm.tcshosting.net'
Command='php command.php upgrade'

## Run Command (With Vars) ##
echo "Switching to $AppFolder..."
cd $AppFolder
echo "Performing Secondary Upgrade..."
$Command
echo "Reverting to Original Folder..."
cd -
echo "Secondary Upgrade Completed."

## Run Program (No Vars) ##
#  crm.tcshosting.net
# php command.php upgrade
# cd -

