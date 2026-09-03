#!/usr/bin/env bash

input=$1

if [[ $input == "total" ]]; then
    echo "2^64 - 1" | bc
    exit 0
fi

if [[ "$input" -le 0 ]] || [[ "$input" -ge 65 ]]; then
    echo "Error: invalid input"
    exit 1
else
    echo "2^($input - 1)" | bc
fi