#!/bin/sh

# Read the first line for the number of integers
read count

# Initialize sum
sum=0

# Loop to read the specified number of integers
for i in $(seq 1 "$count"); do
  read num
  sum=$((sum + num))
done

# Calculate the average
if [ "$count" -ne 0 ]; then
  average=$(echo "scale=3; $sum / $count" | bc)
else
  average=0.000
fi

# Print the average formatted to three decimal places
printf "%.3f\n" "$average"
