all: README.md

README.md:
	echo "# The project guess in game for Coursera The Unix workbench" > README.md
	echo "## file: **guessingame.sh**" >> README.md
	echo -n "README.md was created on: " >> README.md 
	date >> README.md
	echo -n "The numbers of lines in *guessingame.sh* is: " >> README.md
	wc -l guessingame.sh | grep "(^[0-9]*)" -c -v guessingame.sh >> README.md


