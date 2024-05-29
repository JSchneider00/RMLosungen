#!/bin/bash

# Define the source and destination directories
SOURCE_DIR="/home/root/customization/Losungen"
DEST_DIR="/usr/share/remarkable"

# Generate today's date in the format DD.MM.YYYY
TODAYS_DATE=$(date +"%d.%m.%Y")

# Construct the filename
FILE_NAME="${TODAYS_DATE}.png"

# Full path to the source file
SOURCE_FILE="${SOURCE_DIR}/${FILE_NAME}"

# Check if the file exists
if [ -f "$SOURCE_FILE" ]; then
    # Copy the file to the destination directory
    cp "$SOURCE_FILE" "${DEST_DIR}/suspended.png"
else
    echo "File for today's date does not exist."
fi

