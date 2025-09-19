#!/bin/bash

read -p "Enter list IDs separated by comma (e.g., 3005,3006,3007): " LIST_IDS

mysql -u root -p -e "
  USE asterisk;
  UPDATE vicidial_list
  SET status = 'NEW'
  WHERE list_id IN ($LIST_IDS)
    AND status NOT IN ('LB', 'WN', 'BL');
"
