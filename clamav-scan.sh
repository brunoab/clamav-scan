#!/bin/bash

#============================================#
# Config
#============================================#

mail_to="user@mailhost.com"
mail_subject="Clamav scan"
mail_header=""
log_file="./clamav.log"

#============================================#
# processing
#============================================#

target=$1
date_scan=$(date +"%a %b %d %H:%M:%S %Z %Y")

# initialize log file with mail header content
printf "$mail_header" > "$log_file"

# refresh clamav virus definition
/usr/bin/freshclam

# scan target and log it
/usr/bin/clamscan --infected --log="$log_file" --recursive --quiet $target
retour_scan=$?

if [ "$retour_scan" -eq "1" ]
then
        # send mail if any threat is found
        mail -s "$mail_subject" "$mail_to" < "$log_file"
fi

# clean
rm -f "$log_file" 2> /dev/null