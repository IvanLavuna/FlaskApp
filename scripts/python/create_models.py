from flaskapp.models import db_session, User

session = db_session()

user1 = User(id=1,username="asdasd",email="asdasd@gmail.com")

session.add(user1)

session.commit()

# import sqlalchemy
# engine = sqlalchemy.create_engine('mysql://root:password@localhost') # connect to server
# engine.execute("CREATE SCHEMA TEST;") #create db
# # engine.execute("USE dbname") # select new db