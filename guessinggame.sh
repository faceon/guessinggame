echo "How many files are in the current directory?"
echo "Your guess:"
read file_guess

function count_files {
	echo $(eval ls | wc -l)
}

while [ true ]
do
	if [ $file_guess -eq $(count_files) ]
	then
		echo "Brilliant! You guessed it right."
		break
	elif [ $file_guess -gt $(count_files) ]
	then	
		echo "Too high. Guess again:"
	elif [ $file_guess -lt $(count_files) ]
	then
		echo "Too low. Guess again:"
	else
		echo "Not a number. Please guess with a number:"
	fi
	read file_guess
done
