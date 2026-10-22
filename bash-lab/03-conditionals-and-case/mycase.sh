!/bin/bash

read -p "Enter your character  to ckeck: " input 

case "$input" in
    [["digit"]]) echo "digital case" ;;
    [["lower"]]) echo "lower case" ;;
    [["upper"]]) echo "upper case" ;;
    "") echo "enter enything" ;;
    *) echo "Other (special character or more than one char)" ;;
esac
