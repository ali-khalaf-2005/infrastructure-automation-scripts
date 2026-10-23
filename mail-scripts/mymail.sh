#!/bin/bash
for user in $(awk -F: '$3 >= 1000 && $3 < 65534 {print $1}' /etc/passwd)
do
   mail -s "Server mail" "$user" < mtemplate
done 
echo "Mail sent to all users."

