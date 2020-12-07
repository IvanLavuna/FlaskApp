#!/bin/bash

# important commands that I will forget

# install virtual environment and pip
sudo apt-get install python-virtualenv
sudo apt-get install python-pip

# creating virtual environment with special version of python
virtualenv -p /bin/usr/python3.7 [name]

# creating virtual environment
virtualenv [name]

#activating virtual machine
source flask-env/bin/activate

# see all packages included in project
pip list

# to see which python we are currently using
which python

# put all packages that are in project into requirements.txt
pip -r --freeze local > requirements.txt

# delete directory and all stuff inside
rn -rf [dir]

#install all packages from requirements.txt
pip install -r requirements.txt

# terminate process with some ID
kill 13123

# Data Base command
# db.create_all() -> creates database with specified structure(python classes and all that shit)
# user_1 = User( username="Ivanko", email="jo@.com", password="password") -> creates new user
# db.session.add(user_1)  -> adds user to database
# db.session.commit() -> makes real changes to database
# User.query.all() -> returns all users
# User.query.first() -> returns first user
# User.query.filter_by(username="Corey") -> returns users filtered by name = "Corey"
# db.drop_all() - removes all table from database

# Bcrypt functions
# generate_password_hash(string password) ->generates hash for the string in bytes
# generate_password_hash(string password).decode('utf-8') -> generates hash with utf-8 symbols
# check_password_hash(hashed_psw, 'password') -> return true if hashed_psw == hash of 'password', 'password' is actual variable
