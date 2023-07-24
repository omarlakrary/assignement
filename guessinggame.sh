#!/usr/bin/env bash
# File: guessinggame.sh

get_file_count() {

	ls -A | wc -l
}

file_count=$(get_file_count)
guess=0

echo "Welcome to the Guessing game!"

while [[ $guess -ne $file_count ]]; do

read -p "Guess the number of files in the current directory: " guess

if ! [[ $guess=~^[0-9]+$ ]]; then

echo "Please enter a valid positive integer. "

fi

if [[ $guess -lt $file_count ]]; then

echo "Too low! Try again."

elif [[ $guess -gt $file_count ]]; then

echo "Too high! Try again. "

fi

done
echo "It's okay"
echo "the number of files is : ($file_count)"
