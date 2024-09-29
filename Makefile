# Makefile

.PHONY: install lint format venv activate

install:
	pip install --upgrade pip && pip install -r requirements.txt

lint:
	pylint 

lint-notebooks:
	nbqa pylint *.ipynb

format:
	black *.py

venv:
	python3 -m venv .venv
