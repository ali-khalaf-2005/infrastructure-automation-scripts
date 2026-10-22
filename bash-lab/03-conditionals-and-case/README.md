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
