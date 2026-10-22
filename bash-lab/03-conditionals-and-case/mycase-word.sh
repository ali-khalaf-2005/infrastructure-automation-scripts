#!/bin/bash
shopt -s extglob
read -p "Enter your text to ckeck: " input 

case "$input" in
    "") echo "enter enything" ;;
    +([[:digit:]])) echo "digital case" ;;
    +([[:lower:]])) echo "lower case" ;;
    +([[:upper:]])) echo "upper case" ;;
    *) echo "Other (more than one type char)" ;;
esac

