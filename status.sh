#!/bin/bash

# Define MySQL credentials
DB_USER="root"
DB_NAME="asterisk"

# ANSI color codes
GREEN='\033[0;32m'  # Green color for result_1
ORANGE='\033[0;33m'   # Blue color for result_2
YELLOW='\033[0;33m' # Yellow color for difference
NC='\033[0m'        # No color (reset)

echo "**********************************************"
echo "USA Total Leads:"

# Define the first SQL query
SQL_QUERY_1="SELECT COUNT(*) FROM vicidial_list WHERE list_id > '100' AND list_id < '13000';"

# Execute the first query and store the result
result_1=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_1" "$DB_NAME")

# Display the result of the first query in green color
echo -e "Total Leads: ${GREEN}$result_1${NC}"

echo "

"

echo "USA Total Leads Status AA:"

# Define the second SQL query
SQL_QUERY_2="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 100
               AND list_id <= 13000
               AND status IN ('AA', 'AB', 'NA', 'ADC');"

# Execute the second query and store the result
result_2=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_2" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status AA & AB & NA & ADC: ${ORANGE}$result_2${NC}"

echo "

"

# Calculate the difference
difference=$((result_1 - result_2))

# Display the difference in yellow color
echo -e "Dialable Leads: ${YELLOW}$difference${NC}"

#--------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------
#--------------------------------------------------------------------------------------------------------------------------
echo "**********************************************"
echo "CANADA Total Leads:"

# Define the first SQL query
SQL_QUERY_4="SELECT COUNT(*) FROM vicidial_list WHERE list_id > '3000' AND list_id < '5000';"

# Execute the first query and store the result
result_4=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_4" "$DB_NAME")

# Display the result of the first query in green color
echo -e "Total Leads: ${GREEN}$result_4${NC}"

echo "

"

echo "CANADA Total Leads Status AA:"

# Define the second SQL query
SQL_QUERY_5="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 3000
               AND list_id <= 5000
               AND status IN ('AA', 'AB', 'NA', 'ADC');"



# Execute the second query and store the result
result_5=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_5" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status AA & AB & NA & ADC: ${ORANGE}$result_5${NC}"

echo "

"

# Calculate the difference
difference=$((result_4 - result_5))

# Display the difference in yellow color
echo -e "Dialable Leads: ${YELLOW}$difference${NC}"

echo "**********************************************"

# CANADA DISPOSITION IN DETAILS
echo "__________________________________________________"
echo "              CANADA DISPOTION DETAILS              "
echo "__________________________________________________"


echo "CANADA Total Leads:"

# Define the first SQL query
SQL_QUERY_4="SELECT COUNT(*) FROM vicidial_list WHERE list_id > '3000' AND list_id < '5000';"

# Execute the first query and store the result
result_4=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_4" "$DB_NAME")

# Display the result of the first query in green color
echo -e "Total Leads: ${GREEN}$result_4${NC}"

echo ""
echo "CANADA Total Leads Status AA:"

# Define the second SQL query
SQL_QUERY_5="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 3000
               AND list_id <= 5000
               AND status IN ('AA');"

# Execute the second query and store the result
result_5=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_5" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status AA-: ${ORANGE}$result_5${NC}"

echo ""
# Calculate the difference
difference=$((result_4 - result_5))
# Display the difference in yellow color
# echo -e "Dialable Leads: ${YELLOW}$difference${NC}"

echo ""
echo "CANADA Total Leads Status AB:"

# Define the second SQL query
SQL_QUERY_5="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 3000
               AND list_id <= 5000
               AND status IN ('AB');"

# Execute the second query and store the result
result_5=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_5" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status AB-: ${ORANGE}$result_5${NC}"

echo ""
# Calculate the difference
difference=$((result_4 - result_5))
# Display the difference in yellow color
# echo -e "Dialable Leads: ${YELLOW}$difference${NC}"

echo ""
echo "CANADA Total Leads Status NA:"

# Define the second SQL query
SQL_QUERY_5="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 3000
               AND list_id <= 5000
               AND status IN ('NA');"

# Execute the second query and store the result
result_5=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_5" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status NA-: ${ORANGE}$result_5${NC}"

echo ""
# Calculate the difference
difference=$((result_4 - result_5))
# Display the difference in yellow color
# echo -e "Dialable Leads: ${YELLOW}$difference${NC}"

echo ""
echo "CANADA Total Leads Status ADC:"

# Define the second SQL query
SQL_QUERY_5="SELECT COUNT(*) AS status_count
             FROM asterisk.vicidial_list
             WHERE list_id >= 3000
               AND list_id <= 5000
               AND status IN ('ADC');"

# Execute the second query and store the result
result_5=$(mysql -u "$DB_USER" -s -N -e "$SQL_QUERY_5" "$DB_NAME")

# Display the result of the second query in blue color
echo -e "Total Leads Status ADC-: ${ORANGE}$result_5${NC}"

echo ""
# Calculate the difference
difference=$((result_4 - result_5))
# Display the difference in yellow color
# echo -e "Dialable Leads: ${YELLOW}$difference${NC}"
echo "__________________________________________________"
















