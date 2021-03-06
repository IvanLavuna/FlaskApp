from flaskapp.models import User, Movie, MovieSchedule, Reservation, db_session

session = db_session()

data = \
[
    [
        User(id=1, username="LaVuna",    firstname="Ivan",   lastname="Manchur",   email="LaVuna@gmail.com",   password="lavuna2002",    phone_number="90123123",   photo="photo.jpeg"),
        User(id=2, username="Pikachu",   firstname="Borys",  lastname="Laplas",    email="Lapko@gmail.com",    password="laplap2002",    phone_number="901231233",  photo="photo.jpeg"),
        User(id=3, username="Hulk",      firstname="Ostap",  lastname="Manchur",   email="trololol@gmail.com", password="ostap19991999", phone_number="517294381",  photo="photo.jpeg"),
        User(id=4, username="Padon",     firstname="Julian", lastname="*********", email="Padon@gmail.com",    password="qwerty123",     phone_number="872368923",  photo="photo.jpeg"),
        User(id=5, username="AdrianZP",  firstname="Adrian", lastname="Bilder",    email="SubAndDub@gmail.com",password="all123",        phone_number="90121233123",photo="photo.jpeg")
    ],
    [
        Movie(id=1, name="Matrix", picture="KianyRivs.jpeg", info="Psychological Movie about world", actors="Kiany Rivs, Jennie Eshley",
                duration="2:11:26"),
        Movie(id=2, name="Matrix:Reboot", picture="KianyRivs.jpeg", info="Psychological Movie about world", actors="Kiany Rivs, Jennie Eshley",
                duration="2:11:26"),
        Movie(id=3, name="Matrix:Revolution", picture="KianyRivs.jpeg", info="Psychological Movie about world", actors="Kiany Rivs, Jennie Eshley",
                duration="2:11:26")
    ],

    [
        MovieSchedule(id=1,  movie_id=1,  date_time="1999-03-14 12:53:42"),
        MovieSchedule(id=2,  movie_id=1,  date_time="1999-03-14 15:19:32"),
        MovieSchedule(id=3,  movie_id=1,  date_time="1999-03-14 18:54:49"),
        MovieSchedule(id=4,  movie_id=1,  date_time="1999-04-14 12:53:42"),
        MovieSchedule(id=5,  movie_id=1,  date_time="1999-04-14 15:19:32"),
        MovieSchedule(id=6,  movie_id=1,  date_time="1999-04-14 18:54:49"),
        MovieSchedule(id=7,  movie_id=1,  date_time="1999-05-14 12:53:42"),
        MovieSchedule(id=8,  movie_id=1,  date_time="1999-05-14 15:19:32"),
        MovieSchedule(id=9,  movie_id=1,  date_time="1999-05-14 18:54:49"),
        MovieSchedule(id=10, movie_id=2, date_time="1999-03-14 10:53:42"),
        MovieSchedule(id=11, movie_id=2, date_time="1999-03-14 13:19:32"),
        MovieSchedule(id=12, movie_id=2, date_time="1999-03-14 21:54:49"),
        MovieSchedule(id=13, movie_id=2, date_time="1999-04-14 10:53:42"),
        MovieSchedule(id=14, movie_id=2, date_time="1999-04-14 13:19:32"),
        MovieSchedule(id=15, movie_id=2, date_time="1999-04-14 21:54:49"),
        MovieSchedule(id=16, movie_id=2, date_time="1999-05-14 10:53:42"),
        MovieSchedule(id=17, movie_id=2, date_time="1999-05-14 13:19:32"),
        MovieSchedule(id=18, movie_id=2, date_time="1999-05-14 21:54:49")
    ],

    [
        Reservation(id=1, date_time="1999-03-14 12:53:42", movie_id=1, user_id=1),
        Reservation(id=2, date_time="1999-03-14 12:53:42", movie_id=1, user_id=2),
        Reservation(id=3, date_time="1999-03-14 12:53:42", movie_id=1, user_id=4)
    ]
]


for model in data:
    for item in model:
        session.add(item)

session.commit()
