#!/usr/bin/env bash

# Function to count the number of files in the current directory
count_files() {
    local file_count=$(ls -1 | wc -l)
    echo "$file_count"
}

# Main function for the guessing game
guessing_game() {
    local actual_count=$(count_files)
    local guessed_count=-1

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    # Loop until the user guesses the correct count
    while [ "$guessed_count" -ne "$actual_count" ]; do
        read -p "Enter your guess: " guessed_count

        if [ "$guessed_count" -lt "$actual_count" ]; then
            echo "Too low! Try again."
        elif [ "$guessed_count" -gt "$actual_count" ]; then
            echo "Too high! Try again."
        fi
    done

    echo "Congratulations! You guessed the correct number of files: $actual_count"
}

# Call the main guessing game function
guessing_game
