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
pip --freeze local > requirements.txt

# delete directory and all stuff inside
rn -rf [dir]

#install all packages from requirements.txt
pip install -r requirements.txt

# terminate process with some ID
kill 13123