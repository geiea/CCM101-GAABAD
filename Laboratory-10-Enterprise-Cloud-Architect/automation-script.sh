#!/bin/bash

# CCM101 Mission 10 - Automated Backup

BACKUP_DIR="/opt/nextcloud/backups"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")

mkdir -p "$BACKUP_DIR"

echo "Starting backup..."

# Backup MariaDB database
docker exec nextcloud-db sh -c 
'mariadb-dump -u root -p"$MYSQL_ROOT_PASSWORD" "$MYSQL_DATABASE"' \
"$BACKUP_DIR/database_$DATE.sql"


# Backup Nextcloud files
docker run --rm 
-v nextcloud_nextcloud_data:/source:ro 
-v "$BACKUP_DIR":/backup 
alpine:3.20 tar -czf "/backup/nextcloud_files_$DATE.tar.gz" -C /source .

echo "Backup completed!"
echo "Backup location: $BACKUP_DIR"