#!/bin/bash

TIMESTAMP=$(date +%Y%m%d_%H%M)
BACKUP_DIR="$HOME/Backups"  
mkdir -p "$BACKUP_DIR"

DIRS=(
  "$HOME"
)
EXCLUDE="--exclude=\"$BACKUP_DIR\""

tar -czf "$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz" "${DIRS[@]}" || exit 1
echo "✅ Smart backup: $BACKUP_DIR/backup_${TIMESTAMP}.tar.gz"
du -h "$BACKUP_DIR/backup_${TIMESTAMP}.tar.gz" | cut -f1
ls -lh "$BACKUP_DIR/"backup_*.tar.gz | tail -3

