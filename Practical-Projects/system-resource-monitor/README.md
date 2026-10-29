# System Resource Monitor

A Bash script that checks CPU, memory, and disk usage on a Linux system and displays a warning when usage exceeds the configured thresholds.

## Features

- Check CPU usage.
- Monitor memory usage.
- Check disk usage of the root filesystem.
- Display warnings when usage exceeds the defined thresholds.

## Requirements

- Linux
- Bash
- `top`, `free`, `df`, `awk`, `sed`, and `bc`

## Usage

Make the script executable:

```bash
chmod +x system-monitor.sh
```

Run the script:

```bash
./system-monitor.sh
```

## Configuration

You can adjust the thresholds at the beginning of the script:

```bash
CPU_THRESHOLD=80
MEM_THRESHOLD=80
DISK_THRESHOLD=80
```

The script displays a warning when resource usage exceeds the configured threshold.

## Purpose

This project was created to practice Bash scripting and Linux system monitoring using command-line tools.

