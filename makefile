README.md:
	echo "Project Title: Guessing Game" > README.md
	echo "Date and time: \$(date)" >> README.md
	echo "Lines of code in guessinggame.sh: \$(wc -l guessinggame.sh | awk '{print $1}')" >> README.md
