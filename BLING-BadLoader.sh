#!/bin/bash

# TODO: Fixed a critical error...will this work now?

BLING_Libs_Folder="./BLING"

echo "BLING Loader"
echo "Library Folder: $BLING_Libs_Folder"
echo " "

function BadLoader() {
if [ -d "$BLING_Libs_Folder" ]; then
	echo "Library Folder Exists [OK]"
	cd "$BLING_Libs_Folder" || return
       # cecho blue "Processing BLING Library File: "
	echo "Processing BLING Library File: "
  	# Folder exists, start the for loop
  	for BLING_LibraryFile in "$BLING_Libs_Folder"/*.bfunc; do
    		# cecho blue "Processing BLING Library: "
			# shellcheck source=/dev/null
    		echo -e "$BLING_LibraryFile"
    		source "$BLING_LibraryFile"
	cd ... || return # use instead of 'cd -' (per shellcheck)
	done
else
  # cecho red "ERROR: Folder does not exist: $BLING_Libs_Folder"
  echo "ERROR: Folder does not exist: $BLING_Libs_Folder"
fi
}

function Loader() {
	if [ -d "BLING_Libs_Folder" ]; then
		echo "Library Folder Exists: [OK]"
		cd "$BLING_Libs_Folder" || return
		# cecho blue "Processing BLING Library File: "
		echo "Processing BLING Library File: "
		# Folder exists, start the for loop
		cd "$BLING_Library_Folder" || return
		sh BLING_TempLoader.sh
		cd ... || return # use instead of 'cd -' (per shellcheck)
		echo "BLING Libraries Loaded Successfully."
		cd ... || return # use instead of 'cd -' (per shellcheck)
	else
		# cecho red "ERROR: Folder does not exists: $BLING_Libs_Folder"
		echo "ERROR: Folder does not exist: $BLING_Libs_Folder"
	fi
}

### Main Progream ###

# BadLoader
Loader
