#!/bin/env bash
# ShellCheck: Disable SC1090
# shellcheck source=/dev/null
# ShellCheck: Disable SC2034
# shellcheck disable=SC2034  # Unused variables left for readability

BLING_Libs_Folder="./BLING"

echo "BLING Loader"
echo "Library Folder: $BLING_Libs_Folder"
echo " "


	if [ -d "BLING_Libs_Folder" ]; then
		echo "Library Folder Exists: [OK]"
		cd "$BLING_Libs_Folder" || return
		# cecho blue "Processing BLING Library File: "
		  echo "Processing BLING Library Files: "
		# Folder exists, start the for loop
		  cd "$BLING_Libs_Folder" || return # Fixed from $BLING_Libraries_Folder
		### Source Libraries ###
		  # shellcheck source=/dev/null  
		  echo -e "$(cat BLING_Functions.list)"
		  source "$(cat BLING_Functions.list)"
		  cd ... || return # use instead of 'cd -' (per shellcheck)
		  echo "BLING Libraries Loaded Successfully."
		  cd ... || return # use instead of 'cd -' (per shellcheck)
	else
		# cecho red "ERROR: Folder does not exists: $BLING_Libs_Folder"
		  echo "ERROR: Folder does not exist: $BLING_Libs_Folder"
	fi

