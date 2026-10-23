#!/bin/bash
backup_dir="$HOME/backup"
mkdir -p "$backup_dir"
for item in "$HOME"/* ; do
    if [ -f "$item" ] ; then
        cp "$item" "$HOME/backup/"
    else 
        echo "skiping $item is not file"
    fi
done    
echo "Backup completed in $backup_dir"
