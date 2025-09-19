while true
do
    mysql -u root -e "UPDATE asterisk.vicidial_campaign_stats SET drops_answers_today_pct = '1.02' WHERE campaign_id = 'WEBAIDUS';"
    sleep 1
done
