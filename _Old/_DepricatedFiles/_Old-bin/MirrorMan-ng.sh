## Mirrorman-ng ##
# This script is a rebuild of MirrorMan from the Morpheus Project 
#

## Import Color shlib ##
. ./Colors.shlib

## Test: define Cecho ##
Cecho="echo -e"
#
### Define Program Name & Version ###
ProgName="MirrorMan-ng"
ProgVersion="0.2.1"
#
#
### Define Folder Variables - Full Paths ###
# TODO: Move to rsync.conf
ReleaseSource="mirrors.kernel.org::fedora/releases/37/Everything/x86_64/os"
Local_Release="Releases"

UpdatesSource="mirrors.kernel.org::fedora/updates/37/Everything/x86_64"
Local_Release="Updates"

### Define Folder Varaibales - Componentized ###
# TODO: Move to rsync.conf.
RemoteHost="mirrors.kernel.org"
RemoteRepo="fedora"
RemoteReleases="releases"
RemoteUpdates="updates"

ReleaseVer="38" ## TODO: Update to pull release from /etc/os-release
Variant="Everything"
Arch="x86_64" ## TODO: Add support for source
## TODO: Enable support for drpms and debug

### Define Run Paramaters ###
# TODO: Add reposync option.
prog="rsync"
cmdlines=" -auvh"
testing=" --dry-run"

function DisplayBanner {
### Banner ###
echo " "

## $Cecho "${Red} MirrorMan-ng v0.2 - An efficient wrapper for Rsync${Color_Off}"
$Cecho "${Yellow} $ProgName $ProgVersion ${Red} - An efficient wrapper script for Rsync / RepoSync. ${Color_Off}"
$Cecho "      ${Red}                (c) 2022-2023 TCS Research. All Rights Reserved. ${Color_Off} "

echo " "

### Main Program ###
# echo Remote Releases: "$prog $cmdlines $testing $RemoteHost::$RemoteRepo/$RemoteReleases/$ReleaseVer/$Variant/$Arch/os/"
# echo Remote Updates:  "$prog $cmdlines $testing $RemoteHost::$RemoteRepo/$RemoteReleases/$ReleaseVer/$Variant/$Arch"
$Cecho " ${Blue} ### Repo Info ### ${Color_Off} "
$Cecho " ${Yellow} Remote Host:\t		${White} $RemoteHost"
$Cecho " ${Yellow} Remote Repo:\t 		${White} $RemoteRepo"

$Cecho " "

$Cecho " ${Blue} ### Remote Info ### ${Color_Off} "
$Cecho " ${Yellow} Remote Releases:\t 	${White} $RemoteReleases"
$Cecho " ${Yellow} Remote Updates:\t  	${White} $RemoteUpdates"

$Cecho " "

$Cecho " ${Blue} ### Release Info ### ${Color_Off} "
$Cecho " ${Yellow} Release Version:\t 	${White} $ReleaseVer"
$Cecho " ${Yellow} Variant:\t		${White} $Variant"
$Cecho " ${Yellow} Arch:\t			${White} $Arch"

echo " "

$Cecho " ${Blue} ### Local Info ### ${Color_Off} "
$Cecho " ${Yellow} Local Releases:\t  	${White} $Local_Release"
$Cecho " ${Yellow} Local Updates:\t   	${White} $Local_Updates"

echo " "
}

### Main Program ###
function MainProgram {
echo Remote Releases: "$prog $cmdlines $testing $RemoteHost::$RemoteRepo/$RemoteReleases/$ReleaseVer/$Variant/$Arch/os/"
echo Remote Updates:  "$prog $cmdlines $testing $RemoteHost::$RemoteRepo/$RemoteReleases/$ReleaseVer/$Variant/$Arch"
}


###  Call Functions ###
DisplayBanner

