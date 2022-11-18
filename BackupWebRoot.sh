## Taken From
#https://stackoverflow.com/questions/6212219/passing-parameters-to-a-bash-function

## This can assist with the development of TarMonster.
#
#
# Bash style declaration for all you PHP/JavaScript junkies. :-)
# $1 is the directory to archive
# $2 is the name of the tar and zipped file when all is done.
#
function backupWebRoot ()
{
    tar -cvf - "$1" | zip -n .jpg:.gif:.png "$2" - 2>> $errorlog &&
        echo -e "\nTarball created!\n"
}


# sh style declaration for the purist in you. ;-)
# $1 is the directory to archive
# $2 is the name of the tar and zipped file when all is done.
backupWebRoot ()
{
    tar -cvf - "$1" | zip -n .jpg:.gif:.png "$2" - 2>> $errorlog &&
        echo -e "\nTarball created!\n"
}


# In the actual shell script
# $0               $1            $2

backupWebRoot ~/public/www/ webSite.tar.zip

