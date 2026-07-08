#!/bin/bash

# Script: count_files_by_extension.sh
# Purpose: Count files by extension inside a given directory

# Check if the user entered a directory path
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

DIR="$1"

# Check if the given path is really a directory
if [ ! -d "$DIR" ]; then
    echo "Invalid directory"
    exit 1
fi

echo "Files in: $DIR"
echo

# Find files, take their extensions, sort them, and count them
find "$DIR" -name ".git" -prune -o -type f -print | while read -r file; do
    filename=$(basename "$file")

    # If the file has an extension, print it
    if [[ "$filename" == *.* ]]; then
        echo "${filename##*.}"
    else
        echo "no_extension"
    fi
done | sort | uniq -c | while read -r count extension; do
    echo "$extension: $count"
done

echo
echo "Done"
