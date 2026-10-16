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

### `change-directory.sh`

Changes to the specified directory, or to the user's home directory if no path is provided.

**Usage**

Go to the home directory:

```bash
./change-directory.sh
```

Go to a specific directory:

```bash
./change-directory.sh /etc
```

**How it works**

- Uses `$HOME` as the default destination when no arguments are provided.
- Uses the first argument as the destination path.
- Exits with a non-zero status if the directory change fails.
- Prints the resulting working directory after a successful change.

**Requirements**

- Bash

**Note:** Running the script normally does not change the working directory of the parent terminal shell. Use `source ./change-directory.sh /path` if you want the change to affect your current shell.

### `ls-wrapper.sh`

A Bash wrapper for `ls` that supports selected options and multiple file or directory paths.

**Supported Options:** `-l`, `-a`, `-d`, `-i`, `-R`

**Usage**

```bash
./ls-wrapper.sh
./ls-wrapper.sh -la
./ls-wrapper.sh -l /etc /var
./ls-wrapper.sh -R -- /path/to/directory
```

**How it works**

- Accepts supported options, including combined options such as `-la`.
- Allows multiple file and directory paths.
- Uses `--` to stop option parsing and treat remaining arguments as paths.
- Reports unsupported options and exits with status code `2`.
- Defaults to the current directory when no paths are provided.

**Requirements:** Bash and `ls`.
