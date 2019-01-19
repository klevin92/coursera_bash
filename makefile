export DATE=$(shell date)
export LINES=$(shell wc -l guessinggame.sh)

.PHONY: README.md
README.md:
	@rm README.md
	@echo "Project name: Guessing Game" >> README.md
	@echo "Generate date: ${DATE}" >> README.md
	@echo "Lines of code: ${LINES}" >> README.md
