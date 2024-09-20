#! /bin/bash

NUMBER=$1

if [$NUMBER -gt 10]
then
    echo "given number $NUMBER is greater than 10"
else 
    echo "given number $NUMBER is lessthan 10"
fi

# -gt = greater
# -lt = lessthan
# -eq = equal
# -le = lessthan or equal
