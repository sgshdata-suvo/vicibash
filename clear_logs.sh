#!/bin/bash

# Truncate the screenlog.0 file
> /var/log/astguiclient/screenlog.0
sudo truncate -s 0 /var/log/astguiclient/FASTagiout*
sudo truncate -s 0 /var/log/astguiclient/listen*
sudo truncate -s 0 /var/log/astguiclient/vdautodial*
sudo truncate -s 0 /var/log/astguiclient/vdautodial*
sudo truncate -s 0 /var/log/astguiclient/FASTagiout*
sudo truncate -s 0 /var/log/astguiclient/agiout*
sudo truncate -s 0 /var/log/astguiclient/screenlog*
sudo truncate -s 0 /var/log/astguiclient/update*
sudo truncate -s 0 /var/log/astguiclient/action*
sudo find /var/lib/mysql/ -type f -name "mysql-bin.000*" ! -newermt $(date +%Y-%m-%d) -delete





# Truncate the Asterisk messages log
sudo truncate -s 0 /var/log/asterisk/messages
