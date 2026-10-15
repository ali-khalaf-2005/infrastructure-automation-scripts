#!/bin/bash

if [ "$#" -eq 0 ]; then
    cd "$HOME" || exit 1
else 
    cd "$1" || exit 1
fi
 echo "success change $PWD"
