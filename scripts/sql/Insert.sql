insert into `User` values(1, "LaVuna","Ivan", "Manchur","LaVuna@gmail.com","lavuna2002","90123123","photo.jpeg");
insert into `User` values(2, "Pikachu","Borys", "Laplas","Lapko@gmail.com","laplap2002","901231233","photo.jpeg");
insert into `User` values(3, "Hulk","Ostap", "Manchur","trololol@gmail.com","ostap19991999","517294381","photo.jpeg");
insert into `User` values(4, "Padon","Julian", "*********","Padon@gmail.com","qwerty123","872368923","photo.jpeg");
insert into `User` values(5, "AdrianZP","Adrian", "Bilder","SubAndDub@gmail.com","all123","90121233123","photo.jpeg");
SELECT * FROM movie_db.`User`;

INSERT INTO `Movie` VALUES(1, "Matrix", "KianyRivs.jpeg","Psychological Movie about world","Kiany Rivs, Jennie Eshley","2:11:26");
INSERT INTO `Movie` VALUES(2, "Matrix:Reboot", "KianyRivs.jpeg","Psychological Movie about world","Kiany Rivs, Jennie Eshley","2:11:26");
INSERT INTO `Movie` VALUES(3, "Matrix:Last WAr:", "KianyRivs.jpeg","Psychological Movie about world","Kiany Rivs, Jennie Eshley","2:11:26");
SELECT * FROM movie_db.`Movie`;



INSERT INTO `MovieShedule` VALUES(1,1,"1999-03-14 12:53:42");
INSERT INTO `MovieShedule` VALUES(2,1,"1999-03-14 15:19:32");
INSERT INTO `MovieShedule` VALUES(3,1,"1999-03-14 18:54:49");

INSERT INTO `MovieShedule` VALUES(4,1,"1999-04-14 12:53:42");
INSERT INTO `MovieShedule` VALUES(5,1,"1999-04-14 15:19:32");
INSERT INTO `MovieShedule` VALUES(6,1,"1999-04-14 18:54:49");

INSERT INTO `MovieShedule` VALUES(7,1,"1999-05-14 12:53:42");
INSERT INTO `MovieShedule` VALUES(8,1,"1999-05-14 15:19:32");
INSERT INTO `MovieShedule` VALUES(9,1,"1999-05-14 18:54:49");


INSERT INTO `MovieShedule` VALUES(10,2,"1999-03-14 10:53:42");
INSERT INTO `MovieShedule` VALUES(11,2,"1999-03-14 13:19:32");
INSERT INTO `MovieShedule` VALUES(12,2,"1999-03-14 21:54:49");

INSERT INTO `MovieShedule` VALUES(13,2,"1999-04-14 10:53:42");
INSERT INTO `MovieShedule` VALUES(14,2,"1999-04-14 13:19:32");
INSERT INTO `MovieShedule` VALUES(15,2,"1999-04-14 21:54:49");

INSERT INTO `MovieShedule` VALUES(16,2,"1999-05-14 10:53:42");
INSERT INTO `MovieShedule` VALUES(17,2,"1999-05-14 13:19:32");
INSERT INTO `MovieShedule` VALUES(18,2,"1999-05-14 21:54:49");
SELECT * FROM movie_db.`MovieShedule`;



INSERT INTO `Reservation` VALUES(1,"1999-03-14 12:53:42",1,1);
INSERT INTO `Reservation` VALUES(2,"1999-03-14 12:53:42",1,2);
INSERT INTO `Reservation` VALUES(3,"1999-03-14 12:53:42",1,4);
SELECT * FROM movie_db.`Reservation`;
