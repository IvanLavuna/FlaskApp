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

 Data Base command
 db.create_all() -> creates database with specified structure(python classes and all that shit)
 user_1 = User( username="Ivanko", email="jo@.com", password="password") -> creates new user
 db.session.add(user_1)  -> adds user to database
 db.session.commit() -> makes real changes to database
 User.query.all() -> returns all users
 User.query.first() -> returns first user
 User.query.filter_by(username="Corey") -> returns users filtered by name = "Corey"
 db.drop_all() - removes all table from database

 Bcrypt functions
 generate_password_hash(string password) ->generates hash for the string in bytes
 generate_password_hash(string password).decode('utf-8') -> generates hash with utf-8 symbols
 check_password_hash(hashed_psw, 'password') -> return true if hashed_psw == hash of 'password', 'password' is actual variable

# alembic commands
alembic init alembic # inits alembic
alembic upgrade head # upgrades last migration
alembic upgrade 945fc7313080 # adds a migration(executes upgrade script in specified version)
alembic revision -m "Second migration" # creates new revision
PYTHONPATH=./../ alembic upgrade head # if flaskapp is not importing
PYTHONPATH=./../ alembic revision --autogenerate -m "Fours state" # creates new revision of DB based on models in models.py
alembic upgrade 945fc # upgrades specified migrations
alembic upgrade head --sql # to see sql script that generates
alembic upgrade ae1027a6acf --sql > migration.sql # we can generate sql script by such command
 # Relative upgrades/downgrades are also supported. To move two versions from the current, a decimal value “+N” can be supplied:
alembic upgrade +2
alembic downgrade -1
alembic upgrade ae10+2
alembic current # view current revision
alembic downgrade base # downgrade to base



# curl
# 1) DOWNLOAD a file
curl -o vue-v2.6.10.js https://cdn.jsdelivr.net/npm/vue/dist/vue.js
  # -> save the result into vue-v2.6.10.js
curl -O vue-v2.6.10.js https://cdn.jsdelivr.net/npm/vue/dist/vue.js
  # -> saces the file with its original filename

# 2) Continue disconnected download
curl -C - -O http://domain.com/file.tar.gz

# 3) Download multiple files from different URLs
xargs -n 1 curl -O < listurls.txt

# 4) Create s POST request with parameter
curl --data "firstName = John & lastName = Doe" http://localhost:4200/home

# 5) see cookies which were downloaded from specified site
curl --cookie-jar cnncookies.txt https://www.cnn.com/index.html -O

# 6) send cookies
curl --cookie cnncookies.txt https://www.cnn.com

# 7) To prevent curl from using your bandwidth, you can limit the download speed to 100 KB / s, as shown below.
curl --limit-rate 100K http://yourdomain.com/yourfile.tar.gz -O

# 8) sending application/json data to server
curl --header "Content-Type: application/json"   --request POST   --data '{"username":"xyz","password":"xyz"}'   http://localhost:4200/json-example

# 9) sending application/json data to server from file
curl -H "Content-Type: application/json" --data @./data/json/user.json http://localhost:4200/json-example

# 10)
curl -XGET http://localhost:4200/file

# 11)
curl -X POST -G 'http://localhost:5000/puppies' -d name=Ichigo+Men -d description=strong+and+ruddy
# or
curl -X POST -G 'http://localhost:5000/puppies?name=Ichigo+Men&description=strong+and+ruddy'

~




