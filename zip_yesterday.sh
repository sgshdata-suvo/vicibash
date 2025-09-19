#!/bin/bash

# Directory where files are located
SOURCE_DIR="/var/spool/asterisk/monitorDONE/ORIG"

# Directory to store the backup
BACKUP_DIR="/home/Databasebackup/mp3"

# Get yesterday's date in the format YYYY-MM-DD
YESTERDAY=$(date -d "yesterday" +"%Y-%m-%d")

# Full path of the folder inside SOURCE_DIR (e.g., /var/spool/asterisk/monitorDONE/ORIG/2024-11-21)
FOLDER_TO_ZIP="${SOURCE_DIR}/${YESTERDAY}"

# Destination zip file path
ZIP_FILE="${BACKUP_DIR}/${YESTERDAY}.zip"

# Check if the folder exists
if [ -d "$FOLDER_TO_ZIP" ]; then
    # Create the backup directory if it doesn't exist
    mkdir -p "$BACKUP_DIR"

    # Change to the SOURCE_DIR and zip the folder inside it without the absolute path
    cd "$SOURCE_DIR" && zip -r "$ZIP_FILE" "$YESTERDAY"

    echo "Zipped $FOLDER_TO_ZIP to $ZIP_FILE successfully."
else
    echo "Folder $FOLDER_TO_ZIP does not exist."
fi

