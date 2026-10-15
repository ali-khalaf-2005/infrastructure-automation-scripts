# Bash Lab

Small Bash scripts for practicing Linux commands and automating simple tasks.

## Scripts

### `list-files.sh`

A simple Bash script that lists the contents of the current directory or a specified path using `ls`.

**Usage**

List the contents of the current directory:

```bash
./list-files.sh
```

List a specific directory:

```bash
./list-files.sh /etc
```

Display detailed information, including hidden files:

```bash
./list-files.sh -la
```

**How it works**

- If no arguments are provided, the script runs `ls` without arguments.
- If arguments are provided, they are passed to `ls` using `"$@"`.

**Requirements**

- Bash
- `ls` (available on standard Linux systems)

**Note:** Review the script before running it. The script passes supplied arguments directly to `ls`.


