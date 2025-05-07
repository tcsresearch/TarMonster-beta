#!/bin/bash

BLING_Libs_Folder="./BLING"

echo "BLING Loader"
echo "Library Folder: $BLING_Libs_Folder"
echo " "


	if [ -d "BLING_Libs_Folder" ]; then
		echo "Library Folder Exists: [OK]"
		cd $BLING_Libs_Folder
		# cecho blue "Processing BLING Library File: "
		echo "Processing BLING Library Files: "
		# Folder exists, start the for loop
		cd $BLING_Library_Folder
		### Source Libraries ###
		echo -e `cat BLING_Functions.list`
		source `cat BLING_Functions.list`
		cd -
		echo "BLING Libraries Loaded Successfully."
		cd -
	else
		# cecho red "ERROR: Folder does not exists: $BLING_Libs_Folder"
		echo "ERROR: Folder does not exist: $BLING_Libs_Folder"
	fi

