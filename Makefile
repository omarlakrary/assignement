#Makefile for the guessing game

line_of_code := $(shell wc -l < guessinggame.sh)

all: guessinggame.sh readme.md

readme.md:
	@echo "# Guessing game" > readme.md
	@echo "This is a bash script where the user has to guess the number of files in the curent directory" >> readme.md
	@echo "Date and time of make execution: $$(date)" >> readme.md
	@echo "" >> readme.md
	@echo "Number of lines : $(line_of_code)" >> readme.md
	@echo "" >> readme.md
	@echo "GitHub Pages site: https://github.com/omarlakrary/assignement.git" >> readme.md


	
clean: 
	@rm -f readme.md
	
