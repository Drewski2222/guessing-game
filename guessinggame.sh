#!/usr/bin/env bash
# File: guessinggame.sh

function get_guess {
	read -p "Enter your guess for the number of files in the directory: " guess
	echo $guess
}

files=$(ls | wc -l)

while true
do
	user_guess=$(get_guess)
	if [ $user_guess -eq $files ]
	then
		echo "Congratulations! You correctly guessed the number of files."
		break
	elif [ $user_guess -lt $files ]
	then
		echo "Your guess is too low, please try again."
	else
		echo "Your guess is too high, please try again."
	fi
done
