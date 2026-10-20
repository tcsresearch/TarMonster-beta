#!/bin/env bash

# SanityChecker.bfunc - Source If Exists Function 	(SanityChecker) #			
# Function to source files in a given directory with a specific extension

# shellcheck disable=SC2034
# shellcheck source=/dev/null

#####################################################################################################################################
# TODO #																															#
#####################################################################################################################################

# 		 [NEEDS CODE] If folder does not exist, create it if --mkdir option is called (via CASE Statement 1.)
#        [NEEDS CODE] Create --strict option to quit if files/folders not found (via CASE Statement 1.) 
#
# 		Create --config/--conf, --function/--bfunc, --profile/--bprofile, and ---excludes CASE statement options (via CASE Statement 2.)
#
#        Enable Colors.conf sourcing.
#        Print warning or error if file/folder not found.
#       

#####################################################################################################################################
# Colors.conf #																														#
#####################################################################################################################################
function LoadColors() {
# Define Our Colors
# NEW Sep 14, 2026: Add orange color.
	  black=$(tput setaf 0)
	  red=$(tput setaf 1)
	  green=$(tput setaf 2)
      orange=$(tput setaf 166)
	  yellowbrown=$(tput setaf 3)
	  blue=$(tput setaf 4)
	  magenta=$(tput setaf 5)
	  cyan=$(tput setaf 6)
	  whitelightgray=$(tput setaf 7)
	  whitelightgrey=$(tput setaf 7)
	  brightblack_darkgray=$(tput setaf 8)
	  brightblack_darkgrey=$(tput setaf 8)
	  brightred=$(tput setaf 9)
	  brightgreen=$(tput setaf 10)
	  brightyellow=$(tput setaf 11)
	  brightblue=$(tput setaf 12)
	  brightmagenta=$(tput setaf 13)
	  brightcyan=$(tput setaf 14)
	  brightwhite=$(tput setaf 15)
 	  reset=$(tput sgr0) # Reset to default 
}

#####################################################################################################################################
# CASE Statement 1 - Create Folder / Fail On Not Found #																			#
#####################################################################################################################################
case "$1" in
    --strict|--mkdir|--prompt-mkdir)
        echo "Matched one of the allowed flags: $1"
        # Add your logic here
        ;;
    *)
        echo "Unknown option: $1"
        ;;
esac


#####################################################################################################################################
# CASE Statement 2 - Config / Function / Profile / Excludes Presets #																#
#####################################################################################################################################

# Initialize variables
CONFIG=""
FUNC=""
PROFILE=""
EXCLUDES=""

while [[ "$#" -gt 0 ]]; do
    case "$1" in
        --config|--conf|-c)
            CONFIG="$2"
            shift 2
            ;;
        --function|--bfunc|-f)
            FUNC="$2"
            shift 2
            ;;
        --profile|--bprofile|-p)
            PROFILE="$2"
            shift 2
            ;;
        --excludes|-e)
            EXCLUDES="$2"
            shift 2
            ;;
        -h|--help)
            echo "Usage: $0 [--config FILE] [--function NAME] [--profile NAME] [--excludes LIST]"
            exit 0
            ;;
        *)
            echo "Unknown parameter: $1"
            exit 1
            ;;
    esac
done


#####################################################################################################################################
# SanityChecker Function #																											#
#####################################################################################################################################

SanityChecker() {
    local dir="$1"
    local pattern="$2"
    if [[ -d "$dir" ]]; then
        echo "${brightwhite} Sourcing files from: ${brightyellow} $dir ${reset}"
	echo "-------------------------------------------------------------------------------------------"
	# Use a glob to find matching files and loop through them
        for file in "$dir"/$pattern; do
            # Check if the glob found actual files (and not just the literal pattern if no files match)
            if [[ -f "$file" ]]; then
                echo "  ${brightyellow} Sourcing: ${brightblue} $file"
                source "$file"
            fi
        done
    else
        echo "Directory not found: $dir"
    fi
}

function SanityChecker_Usage() {
	echo " Usage: SanityChecker [folder] [file_extension] "
	echo " Example: SanityChecker config/*.conf "
	echo " Example: SanityChecker functions/*.bfunc "
	echo " Example: SanityChecker profiles/*.bprofile "
	echo " "
}

#####################################################################################################################################################################
# Main Program #																																					#
#####################################################################################################################################################################

# Only run SanityChecker_Usage if no args specified.
if [ "$#" -eq 0 ]; then
    SanityChecker_Usage
fi

# Colors
LoadColors
