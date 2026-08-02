#!/usr/bin/env bash

input=$1
n=$2

sqaure_of_sums=$(( ((n**2) * ((n+1)**2))/4 ))
sum_of_squares=$(( (n * (n+1) * ((2*n) + 1))/6 ))
if [[ "$input" == "square_of_sum" ]]; then
    echo $sqaure_of_sums
elif [[ "$input" == "sum_of_squares" ]]; then
    echo $sum_of_squares
else    
    echo $(( sqaure_of_sums - sum_of_squares ))
fi