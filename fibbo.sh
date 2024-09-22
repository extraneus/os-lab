#!/bin/bash

# Function to generate Fibonacci series
fibonacci() {
    num_terms=$1
    a=0
    b=1

    echo "Fibonacci series up to $num_terms terms:"
    
    for (( i=0; i<num_terms; i++ )); do
        echo -n "$a "
        fn=$((a + b))  # Next term is the sum of the previous two
        a=$b           # Update a to the next term
        b=$fn          # Update b to the next term
    done

    echo  # Move to the next line after the loop
}

# Input number of terms
echo -n "Enter the number of terms: "
read num

# Call the fibonacci function
fibonacci $num
