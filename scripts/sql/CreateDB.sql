-- That script will generate 4 tables in movie_db DataBase: User, Movie, Reservation, MovieSchedule
-- CREATE SCHEMA movie_db;
USE movie_db;

CREATE TABLE `User`(
	id					INT 		  PRIMARY KEY,
    username		    VARCHAR(25)     NOT NULL UNIQUE,
    firstname           VARCHAR(25)     NOT NULL,
    lastname	        VARCHAR(25)     NOT NULL,
    email		        VARCHAR(40)     NOT NULL UNIQUE,
    `password`			VARCHAR(40)     NOT NULL,
    phone_number		VARCHAR(20),
    photo				VARCHAR(30)
);

CREATE TABLE `Movie`(
	id		    INT			  PRIMARY KEY,
    `name`		VARCHAR(40)  NOT NULL,
    picture		VARCHAR(30),
    info		TEXT,
    actors		TEXT,
    duration    VARCHAR(15) NOT NULL
);

CREATE TABLE `Reservation`( # updated
	id            INT         PRIMARY KEY,
	`date_time`	  VARCHAR(20) NOT NULL,
    movie_id      INT         NOT NULL,
    user_id       INT         NOT NULL,
	
	FOREIGN KEY (movie_id) REFERENCES Movie(id),
	FOREIGN KEY (user_id) REFERENCES `User`(id)
);

Create TABLE `MovieSchedule`(
	id   		INT PRIMARY KEY,
    movie_id	INT NOT NULL,
    `date_time`	VARCHAR(20) NOT NULL,
    
    FOREIGN KEY(movie_id) REFERENCES Movie(id)
);


