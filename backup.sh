#!/bin/bash
# Script sederhana untuk backup folder ke direktori tertentu

SOURCE_DIR="$HOME/Documents"
BACKUP_DIR="$HOME/Backup"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_NAME="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/$BACKUP_NAME" "$SOURCE_DIR"

echo "Backup berhasil disimpan di $BACKUP_DIR/$BACKUP_NAME"
