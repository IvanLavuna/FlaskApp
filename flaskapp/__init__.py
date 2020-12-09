from flask import Flask
# from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:password@localhost/movie_db'
# app.config['SECRET_KEY'] = 'nsdjb124n52nsdbb923efuwubdsfbq3r90bghfglwdja'


from flaskapp import routes
