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
9. Under mylib create init.py by `touch mylib/__init__.py` and `touch mylib/logic.py`
10. `touch main.py`
   
