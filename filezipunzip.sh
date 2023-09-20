#!/bin/bash

# Step 1: Create a directory in the user's home directory
current_user=$(whoami)
new_directory="$HOME/my_files"
mkdir -p "$new_directory"


# Step 2: Create at least 2 files in the created directory
touch "$new_directory/file1.txt"
echo "This is file 1 content." > "$new_directory/file1.txt"

touch "$new_directory/file2.txt"
echo "This is file 2 content." > "$new_directory/file2.txt"

# Step 3: Create a compressed file without the directory
cd "$HOME"
tar -czvf my_files.tar.gz -C "$current_user" my_files

echo "Files and directory have been created and compressed successfully."
