#!/bin/bash
# Folder check 
BACKUP_DIR="backup"
LOG_FILE="backup.log"
if [ ! -d "$BACKUP_DIR" ]; then
mkdir $BACKUP_DIR
echo "Backup folder ban gaya"
fi
# Backup file with date 
DATE=$(date +%Y-%m-%d)
FILE="$BACKUP_DIR/backup_$DATE.TXT"
# Backup logic (example: important files copy)
echo "Backup taken on $DATE" > $FILE
echo "Backup file bana: $FILE"
# Log me entry
echo "[$DATE] Backup successful: $FILE" >>$LOG_FILE
echo "Ho gaya! Log file me entry ho gayi."
