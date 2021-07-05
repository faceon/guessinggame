README.md: guessinggame.sh
	touch README.md

	echo "#Guess number of files" > README.md
	echo "guessinggame.sh" >> README.md
	echo >> README.md
	
	echo "This file was run at:" >> README.md
	date >> README.md
	echo >> README.md

	echo "Number of lines in this file:" >> README.md
	wc -l < guessinggame.sh | bc >> README.md 
