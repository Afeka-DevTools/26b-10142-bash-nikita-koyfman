#!/bin/bash

# Script: user_info.sh
# Purpose: Display information about the current user

echo "Current User Info"
echo

# Print the current username
echo "Username: $(whoami)"

# Print the user's home directory
echo "Home directory: $HOME"

# Print all groups the user belongs to
echo "Groups: $(groups)"

# Print the user's default shell
echo "Shell: $SHELL"

echo
echo "Done"
