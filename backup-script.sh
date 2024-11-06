#!/bin/bash
mkdir -p /var/www/html/storage/backup
BACKUP_DATE=$(date +%Y%m%d_%H%M%S)
tar -czf /var/www/html/storage/backup/files_backup_$BACKUP_DATE.tar.gz /var/www/html/public/storage
cd /var/www/html/storage/backup && ls -t | tail -n +6 | xargs -r rm --