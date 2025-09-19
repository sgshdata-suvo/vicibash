#!/bin/bash

# Define MySQL credentials
DB_USER="root"
DB_NAME="asterisk"

# Define the SQL query
SQL_QUERY="SELECT COUNT(*) FROM vicidial_list WHERE list_id > '100' AND list_id < '4999';"

# Execute the query using mysql command
mysql -u "$DB_USER" -e "$SQL_QUERY" "$DB_NAME"




# Define the SQL query
SQL_QUERY="SELECT COUNT(*) FROM vicidial_list WHERE list_id > '5000' AND list_id < '99999';"

# Execute the query using mysql command
mysql -u "$DB_USER" -e "$SQL_QUERY" "$DB_NAME"

