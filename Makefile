install:
	# We can use some other package manager like poetry if we want and we can also use a virtual environment
	pip install --upgrade pip &&\
	pip install -r requirements.txt

format:
	# format code with black
	black *.py mylib/*.py
lint:
	# We can use some other linter like flake8 if we want
	pylint --disable=R,C *.py mylib/*.py # disabled some pylint checks such as recommendations, confurations and conventions
test:
	python -m pytest -vv --cov=mylib test_logic.py 		# run pytest
build:
	# We can use some other build tool like docker 
	#python setup.py sdist bdist_wheel

deploy:
	# We can use some other deployment tool like ansible if we want
	
all: install lint test