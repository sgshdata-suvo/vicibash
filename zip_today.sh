#All recording file will upload automaticaly at preferable time
#!/bin/bash

# Directory where files are located
SOURCE_DIR="/var/spool/asterisk/monitorDONE/ORIG"

# Directory to store the backup
BACKUP_DIR="/home/Databasebackup/mp3"

# Get today's date in the format YYYY-MM-DD
TODAY=$(date +"%Y-%m-%d")

# Full path of the folder inside SOURCE_DIR (e.g., /var/spool/asterisk/monitorDONE/ORIG/2024-11-22)
FOLDER_TO_ZIP="${SOURCE_DIR}/${TODAY}"

# Destination zip file path
ZIP_FILE="${BACKUP_DIR}/${TODAY}.zip"

# Check if the folder exists
if [ -d "$FOLDER_TO_ZIP" ]; then
    # Create the backup directory if it doesn't exist
    mkdir -p "$BACKUP_DIR"

    # Change to the SOURCE_DIR and zip the folder inside it without the absolute path
    cd "$SOURCE_DIR" && zip -r "$ZIP_FILE" "$TODAY"

    echo "Zipped $FOLDER_TO_ZIP to $ZIP_FILE successfully."
else
    echo "Folder $FOLDER_TO_ZIP does not exist."
fi
