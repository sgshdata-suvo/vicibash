#!/bin/bash

while true; do
  clear
  echo "========= HALDERBASH ADMIN MENU ========="
  echo "1) Show ifconfig"
  echo "2) Show public IP"
  echo "3) Clear screen"
  echo "4) Run status.sh"
  echo "5) Run sql_AA_5min.sh"
  echo "6) Run sql_AA_onemin.sh"
  echo "7) Run sql_AA_tensec.sh"
  echo "8) Run drop.sh"
  echo "9) Run dropper.sh"
  echo "10) Run table backup"
  echo "11) Run MySQL backup"
  echo "12) Zip yesterday's MP3s"
  echo "13) Reset list (mys.sh||Group||WN-LB)"
  echo "14) Reset list1 (mys1.sh||One by one||WN-LB)"
  echo "15) Asterisk module reload"
  echo "16) Asterisk core reload"
  echo "17) Show SIP peers"
  echo "18) Show SIP registry"
  echo "19) Connect to Asterisk CLI"
  echo "20) Make all bash files executable"
  echo "21) Edit .bashrc"
  echo "22) Show .bashrc"
  echo "23) Reload .bashrc"
  echo "24) Go to /home"
  echo "25) Go to /home/Databasebackup"
  echo "26) Go to /home/halderbash"
  echo "27) Go to /var/spool/asterisk/monitorDONE/ORIG"
  echo "0) Exit"
  echo "========================================="

  read -p "Choose an option: " choice

  case $choice in
    1) ifconfig ;;
    2) curl ifconfig.me ;;
    3) clear ;;
    4) /home/halderbash/status.sh ;;
    5) /home/halderbash/sql_AA_5min.sh ;;
    6) /home/halderbash/sql_AA_onemin.sh ;;
    7) /home/halderbash/sql_AA_tensec.sh ;;
    8) /home/halderbash/drop.sh ;;
    9) /home/halderbash/dropper.sh ;;
   10) /home/halderbash/backup_script_table.sh ;;
   11) /home/halderbash/mysqlbackup.sh ;;
   12) /home/halderbash/zip_yesterday.sh ;;
   13) /home/halderbash/mys.sh ;;
   14) /home/halderbash/mys1.sh ;;
   15) asterisk -rx "module reload" ;;
   16) asterisk -rx "core reload" ;;
   17) asterisk -rx "sip show peers" ;;
   18) asterisk -rx "sip show registry" ;;
   19) asterisk -vvvr ;;
   20) chmod +x /home/halderbash/*.sh ;;
   21) vim /root/.bashrc ;;
   22) cat /root/.bashrc ;;
   23) source ~/.bashrc ;;
   24) cd /home && bash ;;
   25) cd /home/Databasebackup && bash ;;
   26) cd /home/halderbash && bash ;;
   27) cd /var/spool/asterisk/monitorDONE/ORIG && bash ;;
    0) echo "Exiting..."; break ;;
    *) echo "Invalid option. Press Enter to continue..." ; read ;;
  esac

  echo ""
  read -p "Press Enter to return to menu..."
done
