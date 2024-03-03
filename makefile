# Makefile for guessinggame.sh

# Default target: generate README.md
README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Date and Time: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "Number of lines in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

# Clean target: remove generated files
.PHONY: clean
clean:
	@rm -f README.md

