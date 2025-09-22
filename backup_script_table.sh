# This is for Mysql table backup , for all type of msql table
#!/bin/bash

#Drectory to store backups
BACKUP_DIR="/home/Databasebackup"

#Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# # Perform backups with compression
mysqldump asterisk vicidial_list | gzip > "$BACKUP_DIR/vicidial_list_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_lists | gzip > "$BACKUP_DIR/vicidial_lists_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_dnc | gzip > "$BACKUP_DIR/vicidial_dnc_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_campaign_hotkeys | gzip > "$BACKUP_DIR/vicidial_campaign_hotkeys_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_users | gzip > "$BACKUP_DIR/vicidial_users_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_user_groups | gzip > "$BACKUP_DIR/vicidial_user_groups_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_campaigns | gzip > "$BACKUP_DIR/vicidial_campaigns_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_campaign_statuses | gzip > "$BACKUP_DIR/vicidial_campaign_statuses_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_server_carriers | gzip > "$BACKUP_DIR/vicidial_server_carriers_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_statuses | gzip > "$BACKUP_DIR/vicidial_statuses_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk phones | gzip > "$BACKUP_DIR/phones_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_cid_groups | gzip > "$BACKUP_DIR/vicidial_cid_groups_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_custom_cid | gzip > "$BACKUP_DIR/vicidial_custom_cid_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_inbound_dids | gzip > "$BACKUP_DIR/vicidial_inbound_dids_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_inbound_group_agents | gzip > "$BACKUP_DIR/vicidial_inbound_group_agents_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
mysqldump asterisk vicidial_inbound_groups | gzip > "$BACKUP_DIR/vicidial_inbound_groups_$(date +%Y-%m-%d-%H.%M.%S).sql.gz"
zip -r /home/Databasebackup/root_cron_backup_$(date +%Y-%m-%d-%H.%M.%S).zip /var/spool/cron/tabs/root
zip -r /home/Databasebackup/root_bashrc_$(date +%Y-%m-%d-%H.%M.%S).zip /root/.bashrc
#
#
