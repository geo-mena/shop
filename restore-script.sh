#!/bin/bash
if [ -d "/var/www/html/storage/backup" ] && [ "$(ls -A /var/www/html/storage/backup)" ]; then
    LATEST_BACKUP=$(ls -t /var/www/html/storage/backup | head -n1)
    tar -xzf /var/www/html/storage/backup/$LATEST_BACKUP -C /
    echo "Backup restaurado exitosamente"
else
    echo "No se encontraron backups disponibles"
fi