#!/bin/bash
echo "Backup Start Ho Raha Hai...."
if [ ! -d "backup" ]; then 
mkdir backup 
echo"backup folder bana diya"
else
echo "backup folder pahle se hai"
fi
filename="backup/backup_$(date +%F).txt"
echo "Backup file bana raha hu: $filename"
echo "Backup by Harpal on $(date)" > $filename
echo "Ho gaya! File check karo."
ls backup/

