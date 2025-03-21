#!/bin/bash

# Set the backup directory (adjust as needed)
BACKUP_DIR="/path/to/your/export"

# Ensure the backup directory exists
mkdir -p "$BACKUP_DIR"

# Generate filename with current date
BACKUP_FILE="${BACKUP_DIR}/$(date +\%Y-\%m-\%d).zip"

# Run the docker command to create a backup
docker exec paperless_container_name document_exporter "$BACKUP_DIR" -z

# Keep only the last 7 backups, delete older ones
ls -t "$BACKUP_DIR"/*.zip | tail -n +8 | xargs rm -f

# Print a message
echo "Backup complete. Retaining last 7 backups."
