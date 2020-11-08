TARGET=guessinggame.sh

all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "# guessinggame" > README.md
	echo $$(date) >> README.md
	echo -n "Number of lines in guessinggame.sh:" >> README.md
	grep -c '' guessinggame.sh>>README.md
clean:
	rm README.md
