#!/bin/bash

# Set the backup directory name format
backup_dir_format="BACKUP-%Y_%m_%d-%H_%M_%S-%A"

# Get the current date and time
current_datetime=$(date +${backup_dir_format})

# Create the backup directory in the user's home directory
backup_directory="$HOME/${current_datetime}"
mkdir -p "$backup_directory"

# Set the backup file name
backup_file="${backup_directory}/${current_datetime}.tar.gz"

# Source directory to backup
source_directory="$HOME/Downloads"

# Create the tar.gz backup
tar -czf "$backup_file" "$source_directory"

# Display a message
echo "Backup completed: ${backup_file}"
