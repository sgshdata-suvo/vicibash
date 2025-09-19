#!/bin/bash

read -p "Enter minimum list_id: " MIN_ID
read -p "Enter maximum list_id: " MAX_ID

mysql -u root -p -e "
  USE asterisk;
  UPDATE vicidial_list
  SET status = 'NEW'
  WHERE list_id > '$MIN_ID'
    AND list_id < '$MAX_ID'
    AND status NOT IN ('LB', 'WN', 'BL');
"
