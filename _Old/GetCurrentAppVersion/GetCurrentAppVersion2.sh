#!/usr/bin/env bash

cd crm.tcshosting.net || return 1
php -r "echo 'Current EspoCRM Vesrion Is:' "  && php command.php version
echo " "
php command.php version > VERSION
echo "Saved Current EspoCRM Version to crm.tcshosting.net/VERSION"
cd ... || return # use instead of 'cd -' (per shellcheck)

