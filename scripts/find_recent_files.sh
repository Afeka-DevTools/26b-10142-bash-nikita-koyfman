#!/bin/bash

# Script: find_recent_files.sh
# Purpose: Find all files that were changed in the last N days

# Check if the user entered 2 arguments
if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_path> <number_of_days>"
    exit 1
fi

DIR="$1"
DAYS="$2"

# Check if the given path is really a directory
if [ ! -d "$DIR" ]; then
    echo "Directory not found: $DIR"
    exit 1
fi

# Check that the number of days is a positive number
if ! [[ "$DAYS" =~ ^[0-9]+$ ]]; then
    echo "Error: number_of_days must be a positive number"
    exit 1
fi

echo "Files modified in the last $DAYS days:"
echo "Directory: $DIR"
echo

# Find files that were modified in the last N days
find "$DIR" -name ".git" -prune -o -type f -mtime -"$DAYS" -print

echo
echo "Done"
