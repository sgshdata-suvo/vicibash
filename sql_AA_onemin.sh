#!/bin/bash

# ANSI color codes
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

# Define your SQL query
SQL_QUERY="SELECT COUNT(*) AS status_count
           FROM asterisk.vicidial_list
           WHERE list_id >= 100
             AND list_id <= 500000
             AND status IN ('AA', 'AB', 'NA', 'ADC');"

# Function to execute the SQL query and return the result
execute_query() {
    result=$(mysql -u "$DB_USER" -s -N -e "$1" "$DB_NAME")
    echo "$result"
}

# Execute the first query
result_1=$(execute_query "$SQL_QUERY")

# Display the result of the first query in orange color
echo -e "First Query Result: ${ORANGE}$result_1${NC}"

# Wait or perform some other operations if needed between queries
sleep 60  # Example: wait for 1min

# Execute the second query
result_2=$(execute_query "$SQL_QUERY")

# Display the result of the second query in orange color
echo -e "Second Query Result: ${ORANGE}$result_2${NC}"

# Calculate the difference between the two results
difference=$((result_2 - result_1))

# Display the difference between the results in green color
echo -e "Difference between First and Second Query Results: \033[0;32m$difference${NC}"

