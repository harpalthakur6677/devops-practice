#/bin/bash
LOG_FILE="backup.log"
MAX_SIZE=1024 # 1KB for testing
if [ -f "$LOG_FILE" ] && [ $(stat -c%s "$LOG_FILE") -gt $MAX_SIZE ]; then
mv "$LOG_FILE" "$LOG_FILE.1"
touch "$LOG_FILE"
echo "$(date): Log rotated" >> "$LOG_FILE"
fi
