Log Rotation and Cleanup Script
Description
A Bash script that automates log file management by rotating large log files, compressing them, and deleting old compressed logs.

Features
Checks log files in /var/log/myapp.
Rotates log files larger than 5 MB.
Adds the current date to rotated log filenames.
Compresses rotated logs using gzip.
Deletes compressed logs older than 30 days.
Configuration
LOG_DIR: Directory containing log files.
MAX_LOG_SIZE: Maximum log size in bytes (5 MB).
MAX_LOG_AGE: Maximum age of compressed logs in days (30 days).
Usage
Save the script as log_rotate.sh.

Make it executable:

chmod +x log_rotate.sh
Run the script:

sudo ./log_rotate.sh
Requirements
Bash
stat
find
gzip
Appropriate permissions to access and modify the log directory.
Notes
Update LOG_DIR to match your application's log directory.
Test the script in a safe directory before using it on production logs.
This script is intended for Linux systems.
