function askQuestion {
	echo "How many files are in the current directory?"
	read response
}

user_guess=response

file_count=$(ls | wc -l)

difference=user_guess-file_count

while [[ difference -ne 0 ]]
do
	askQuestion

	if [[ difference -eq 0 ]]
	then
		echo "Congratulations, you guessed right! :)"	
	elif [[ difference -lt 2 ]]
	then
		echo "Very close! Try one more time!"
	elif [[ difference -gt 2 ]]
	then
		echo "Not even close! Try one more time!"
	fi
done
