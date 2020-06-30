\function askQuestion {
	echo "How many files are in the current directory?"
	read response

	if [[ ! $response =~ [0-9] ]] || [[ ! $response =~ ^[0-9] ]] || [[ ! $response =~ [0-9]$ ]]
	then
		echo "ERROR: Input must be a number!"
		askQuestion
	fi	
}

user_guess=response

file_count=$(ls -l | grep ^- | wc -l)

difference=user_guess-file_count

while [[ difference -ne 0 ]]
do
	askQuestion

	if [[ difference -eq 0 ]]
	then
		echo "Congratulations, you guessed right! :)"
	else
		if [[ difference -gt 0 ]]
		then
			echo "Too HIGH! Try one more time!"
		elif [[ difference -lt 0 ]]
		then
			echo "Too LOW! Try one more time!"
		fi
	fi
done
