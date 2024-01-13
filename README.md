## GitHub Actions WorkFlow Badge
** [![Makefile CI](https://github.com/bjcloudac/microservices_fastAPI/actions/workflows/makefile.yml/badge.svg)](https://github.com/bjcloudac/microservices_fastAPI/actions/workflows/makefile.yml)


# microservices_fastAPI
* Scaffold
  * MakeFile
  * requrements.txt
  * source
  * testing
  * dockerfile
 
#Steps followed:
1. Create a virtual environment -> 'python3 -m venv ~/.venv' or you may use 'virtualenv ~/.venv'
2. Open up BASH run time config by `vim ~/.bashrc`, go to the end of lines and source the above environment so that everytime we open up a shell, we get the  environments loaded up
3. Add the line `source ~/.venv/bin/activate`, save and quit by ESC+:+wq
4. confirm the venv is activated by `which python`
5. Create requirements.txt by  `touch requirements.txt`
6. Create Docker file by `touch Dockerfile`
7. Create Make file by `touch Makefile`
8. Crate a directory called `mylib`
9. Under mylib create init.py by `touch mylib/__init__.py` - essentially serves as a constructor  and `touch mylib/logic.py`
10. `touch main.py`   
With all those above, our Scaffold structure is complete. Write logic in mylib/logic.py
 # Now we need to populate the Makefile for the project as shown in the Makefile
   
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

# Now we shall introduce python Fire CLI tool for converting our wiki function as a commandline tool like following

`toich fire_cli.py`
#!/usr/bin/env python

import fire
from mylib.logic import wiki

if __name__ == '__main__':
    fire.Fire(wiki)
# make it runnable by
`chmod +x fire_cli.py`
# test it for functionality with `./fire_cli.py`. and `./fire_cli.py --help`
