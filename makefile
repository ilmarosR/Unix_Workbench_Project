README.md:
	echo "Bash, Make, Git, and GitHub" > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md

clean:
	rm README.md
