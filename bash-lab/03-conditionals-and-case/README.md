### `mycase.sh` – Character Type Checker

A Bash script that uses the `case` statement to identify whether the input is a digit, a lowercase letter, an uppercase letter, or another type of input.

**Concepts practiced:**
- `read` for user input.
- `case` for pattern matching.
- Character classes: `[[:digit:]]`, `[[:lower:]]`, and `[[:upper:]]`.
- Default case (`*`) for unmatched input.
- Handling empty input.

**Usage:**
```bash
chmod +x mycase.sh
./mycase.sh
```

**Note:** The script matches a single character for each character class. Inputs containing multiple characters fall into the default case.

### `mycase-word.sh` – Text Type Checker

A Bash script that uses the `case` statement and extended globbing to classify user input as digits only, lowercase letters only, uppercase letters only, or mixed/other input.

**Concepts practiced:**
- `read` for user input.
- `case` for pattern matching.
- `shopt -s extglob` to enable extended pattern matching.
- `+()` to match one or more characters matching a pattern.
- POSIX character classes: `[[:digit:]]`, `[[:lower:]]`, and `[[:upper:]]`.
- Handling empty input and unmatched patterns.

**Usage:**
```bash
chmod +x mycase-word.sh
./mycase-word.sh
```

**Examples:**
- `12345` → `digital case`
- `hello` → `lower case`
- `HELLO` → `upper case`
- `Hello123` → `Other (more than one type char)`
- Empty input → `enter enything`
