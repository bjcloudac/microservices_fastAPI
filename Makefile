install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	black *.py mylib/*.py
lint:
	pylint --disable=R,C *.py mylib/*.py
test:
	python -m pytest -vv --cov=mylib test_logic.py 
	 
	
all: install lint test