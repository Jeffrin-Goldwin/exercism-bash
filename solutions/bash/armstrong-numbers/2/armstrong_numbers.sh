#!/usr/bin/env bash

number=$1
len=${#number}

if(( ${#number}==1 )); then
    echo "true"
else
    armstrong_number=0
    for (( i=0; i<${#number}; i++)); do
        char=${number:i:1}
        (( armstrong_number += char ** len ))
    done
    if (( armstrong_number == number )); then
        echo "true"
    else
        echo "false"
    fi
fi
