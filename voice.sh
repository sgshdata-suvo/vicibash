#!/bin/bash

# Find all files containing '6476780555' in the filename
files=$(find /var/spool/asterisk/monitorDONE -type f -name '*6476780555*')


# FTP server details
ftp_url="ftp://192.168.1.10" 
ftp_user="server" 
ftp_pass="9051"


# Upload each file using curl
for file in $files; do
    curl -T "$file" "$ftp_url" --user "$ftp_user:$ftp_pass"
done