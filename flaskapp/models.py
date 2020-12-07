from sqlalchemy import create_engine, Column, Integer, String, ForeignKey, Text, DateTime, Time
from sqlalchemy.orm import scoped_session, sessionmaker, relationship
from sqlalchemy.ext.declarative import declarative_base

engine = create_engine('mysql://root:password@localhost/movie_db')
engine.connect()
db_session = scoped_session(sessionmaker(bind=engine))
Base = declarative_base()


class User(Base):
    __tablename__ = 'User'

    id = Column(Integer, primary_key=True)
    username = Column(String(25), unique=True, nullable=False)
    firstname = Column(String(25), nullable=False)
    lastname = Column(String(25), nullable=False)
    email = Column(String(25), unique=True, nullable=False)
    password = Column(String(25), nullable=False)
    phone_number = Column(String(25))
    photo = Column(String(25))

    def __repr__(self):
        return f"User('{self.username}','{self.firstname}','{self.lastname}','{self.email}','{self.phone_number}')"


class Movie(Base):
    __tablename__ = 'Movie'

    id = Column(Integer, primary_key=True)
    name = Column(String(40), nullable=False)
    picture = Column(String(30))
    info = Column(Text)
    actors = Column(Text)
    duration = Column(Time, nullable=False)

    def __repr__(self):
        return f"Movie('{self.name}','{self.picture}','{self.info}','{self.actors}','{self.duration}')"


class Reservation(Base):
    __tablename__ = 'Reservation'

    id = Column(Integer, primary_key=True)
    date_time = Column(DateTime, nullable=False)
    movie_id = Column(Integer, ForeignKey(Movie.id), nullable=False)
    user_id = Column(Integer, ForeignKey(User.id), nullable=False)

    movie = relationship('Movie', back_populates='Reservation')
    user = relationship('User', back_populates='Reservation')

    def __repr__(self):
        return f"User('{self.date_time}','{self.movie_id}','{self.user_id}')"


class MovieSchedule(Base):
    __tablename__ = 'MovieSchedule'

    id = Column(Integer, primary_key=True)
    movie_id = Column(Integer, ForeignKey(Movie.id), nullable=False)
    date_time = Column(DateTime, nullable=False)

    movie = relationship('Movie', back_populates='MovieSchedule')

    def __repr__(self):
        return f"User('{self.movie_id}','{self.date_time}')"

