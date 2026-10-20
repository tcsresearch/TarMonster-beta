#!/bin/env bash
# This script will reset the EspoCRM administrator password.
# TODO: Specify $espocrm_admin_username via commandline with $1

# --- Define UserName ---#
espocrm_admin_username="place_espocrm_admin_username_here"
php command.php SetPassword $espocrm_admin_username
