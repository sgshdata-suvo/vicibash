while true
do
    mysql -u root -e "UPDATE asterisk.vicidial_campaign_stats SET drops_today = '0' WHERE campaign_id = 'WEBAIDUS';"
    sleep 1
done