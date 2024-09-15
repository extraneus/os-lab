#!/bin/bash
echo "enter the number"
read n

declare -a numbers
sum=0

for ((i=0;i<n;i++))
do
   echo "Enter number $((i+1)):"
   read num
   numbers[$i]=$num
   sum=$((sum+num))
done

average=$(echo "scale=2; $sum / $n" | bc)

echo "average : $average"
echo "sum: $sum"
