README.md:
	echo "Project title: " > README.md
	echo "\n" >> README.md
	echo "Bash, Make, Git, and GitHub" >> README.md
	echo "\n" >> README.md
	echo "Make was run: " >> README.md
	date >> README.md
	echo "\n" >> README.md
	echo "Number of lines: " >> README.md
	wc -l guessinggame.sh >> README.md
	echo "\n" >> README.md

clean:
	rm README.md
