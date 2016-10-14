ENV=./env/bin
PATH  := node_modules/.bin:$(PATH)
SHELL := /bin/bash
PYTHON=$(ENV)/python
PIP=$(ENV)/pip
MANAGE=$(PYTHON) manage.py

flake8:
	flake8

req:
	$(PIP) install -r requirements.txt --upgrade

env:
	virtualenv -p `which python3` env

clean:
	pyclean .
	find . -name "*.pyc" -exec rm -rf {} \;
	rm -rf *.egg-info

freeze:
	$(PIP) freeze > requirements.txt
