README.md:
	echo "# Bash, Make, Git, and GitHub" > README.md
	echo "\n" >> README.md
	date >> README.md
	echo "\n">> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
