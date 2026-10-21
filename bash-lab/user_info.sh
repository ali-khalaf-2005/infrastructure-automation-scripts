#!/bin/bash

echo "===== User Information Tool ====="

read -r -p "Enter login name: " logname

if [ -z "$logname" ]; then
    echo "Error: Login name cannot be empty."
    exit 1
fi

if ! user_entry=$(getent passwd "$logname"); then
    echo "Error: User '$logname' does not exist."
    exit 1
fi

IFS=: read -r username password uid gid gecos home shell <<< "$user_entry"

echo
echo "===== User Information ====="

echo "Login name: $username"
echo "UID: $uid"
echo "GID: $gid"
echo "Full name / GECOS: $gecos"
echo "Home directory: $home"
echo "Login shell: $shell"

if [ ! -d "$home" ]; then
    echo "Error: Home directory does not exist: $home"
    exit 1
fi

echo
echo "===== Home Directory Files ====="

ls -la -- "$home"

echo
echo "===== Detailed File Information ====="

find "$home" -maxdepth 1 -mindepth 1 \
    -exec stat -c '%A %U %G %s bytes %y %n' -- {} \;

echo
echo "===== Copying Home Directory to /tmp ====="

destination="/tmp/${username}_home_copy"

if mkdir -p -- "$destination"; then
    if cp -a -- "$home"/. "$destination"/; then
        echo "Copy completed successfully."
        echo "Destination: $destination"
    else
        echo "Warning: Some files could not be copied."
        echo "Check permissions, available disk space, and error messages."
    fi
else
    echo "Error: Could not create destination directory."
fi

echo
echo "===== Current Processes ====="

ps -u "$username" -f

echo
echo "===== End of Report ====="
