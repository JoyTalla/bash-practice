#!/bin/bash
# Back up a folder into ~/backups, with today's date in the name
source_folder="$1"
backup_folder="$HOME/backups"
today=$(date +%Y-%m-%d)
backup_file="$backup_folder/backup-$today.tar.gz"
if [ -z "$source_folder" ]; then
echo "Usage: ./backup.sh FOLDER"
exit 1
fi
mkdir -p "$backup_folder"
tar -czf "$backup_file" "$source_folder" 2> "$backup_folder/errors.txt"
echo "Backup saved: $backup_file"
