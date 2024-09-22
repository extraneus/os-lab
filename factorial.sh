#!/bin/bash

# Function to calculate factorial
factorial() {
    number=$1
    fact=1
    for (( i=1; i<=number; i++ )); do
        fact=$((fact * i))
    done
    echo $fact
}

# Input number
echo -n "Enter a number: "
read num

# Call the factorial function
result=$(factorial $num)
echo "Factorial of $num is: $result"
