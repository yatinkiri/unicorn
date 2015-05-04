/*DATABASE SET-UP*/
DROP DATABASE IF EXISTS unicorn;
CREATE DATABASE unicorn;
USE unicorn;

/*DATABASE STRUCTURE*/
CREATE TABLE User (
    userID CHAR (25), 
    password VARCHAR (25), 
    firstName VARCHAR (20),
    lastName VARCHAR(20),
    email VARCHAR(30),
    city VARCHAR(20),
    PRIMARY KEY (userID)
);

CREATE TABLE runningMovie (
	rmovieId int(7) UNSIGNED AUTO_INCREMENT,-- -- Id is auto increment so no need to define Id in the Form
    movieName VARCHAR (50),
    movieImg varchar(200),
    MovieDescription VARCHAR (256),
    Actor VARCHAR(50),
    Actress Varchar(50),
    PRIMARY KEY (rmovieId)
);

CREATE TABLE upcomingMovie (
	umovieId int(7) UNSIGNED AUTO_INCREMENT, -- Id is auto increment so no need to define Id in the Form
    upMovieName VARCHAR (50), 
    upmovieImg varchar(200),
    MovieDescription VARCHAR (256),
    Actor VARCHAR(50),
    Actress Varchar(50),
    ReleaseDate date,
    PRIMARY KEY (umovieId)
);

CREATE TABLE runningMovieShowtime(
rmovieId int(7) UNSIGNED,
moviedate date,
movieTime time,
Availability int(11),
primary key (rmovieId,moviedate,movieTime),
FOREIGN KEY (rmovieId) REFERENCES runningMovie(rmovieId) on delete cascade
);

CREATE TABLE ccpayment (
	paymentId int(7) UNSIGNED AUTO_INCREMENT, -- Id is auto increment so no need to define Id in the Form
    cardHolderName VARCHAR (50), 
    CardNumber BIGINT(16),
    CCMonth INT(4),
    CCYear INT(4),
    CVV INT(4),
    userID CHAR (25),
    PRIMARY KEY (paymentId),
    FOREIGN KEY (userID) REFERENCES User(userID) on delete cascade
);



-- User Insert query

INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('ykiri', '123456', 'Yatin', 'Kiri', 'ykiri@uncc.edu', 'Charlotte');
INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('vpal', 'qwerty', 'Vinod', 'Palreddy', 'vpal@uncc.edu', 'Charlotte');
INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('dakshg', '1234asdf', 'Dakshniya', 'Gudipatti', 'dakshg@uncc.edu', 'Charlotte');
INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('pratym', '987654', 'Patyusha', 'Moripathi', 'partym@uncc.edu', 'Charlotte');
INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('mkurva', 'asdf1234', 'Mahesh', 'Kurva', 'mkurva@uncc.edu', 'Charlotte');
INSERT INTO `unicorn`.`User` (`userID`, `password`, `firstName`, `lastName`, `email`, `city`) VALUES ('admin', 'admin', 'admin', 'admin', 'admin', 'admin');



-- Running Movie Insert

INSERT INTO `unicorn`.`runningMovie` (`rmovieId`, `movieName`, `movieImg`, `MovieDescription`, `Actor`, `Actress`) VALUES ('101', 'Fury', 'https://events.as.ucsb.edu/wp-content/uploads/2014/12/fury-movie-wide.jpg', 'Action', 'Brad pitt', 'Logan Lerman');
INSERT INTO `unicorn`.`runningMovie` (`movieName`, `movieImg`, `MovieDescription`, `Actor`, `Actress`) VALUES ('The Dark Knight Rises', 'http://upload.wikimedia.org/wikipedia/en/8/83/Dark_knight_rises_poster.jpg', 'Action,Thriller', 'Cristian Bale', 'Anne Hathaway');


-- Upcoming Movie insert

INSERT INTO `unicorn`.`upcomingMovie` (`umovieId`, `upMovieName`, `upmovieImg`, `MovieDescription`, `Actor`, `Actress`, `ReleaseDate`) VALUES ('901', 'The Avengers: Age of Ultron', 'http://cdn1-www.comingsoon.net/assets/uploads/gallery/avengers-age-of-ultron-1395451320/10869325_591589580977275_2778898650041679518_o.jpg', 'Action/Adventure', 'Robert Downey Jr.', 'Scarlett Johansson', '2015/05/01');
INSERT INTO `unicorn`.`upcomingMovie` (`upMovieName`, `upmovieImg`, `MovieDescription`, `Actor`, `Actress`, `ReleaseDate`) VALUES ('Tomorrowland', 'http://t3.gstatic.com/images?q=tbn:ANd9GcSQ_0W7gaPpHYi7l5Y1pPKD2rpnSuo_z89Cz7f4pWMBatdMKqy7', 'Fantasy/Mystery', 'George Clooney', 'Britt Robertson', '2015-05-22');


-- runningMovieShowtime Insert Query 

INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/15', '09:00:00','20');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/15', '13:00:00','15');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/15', '17:00:00','15');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/16', '20:00:00','16');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/16', '09:00:00','15');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('101', '2015/04/16', '12:00:00','15');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/16', '11:00:00','18');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/15', '15:00:00','14');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/15', '19:00:00','16');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/15', '23:00:00','18');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/16', '20:00:00','16');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/16', '09:00:00','15');
INSERT INTO `unicorn`.`runningMovieShowtime` (`rmovieId`, `moviedate`, `movieTime`,`Availability`) VALUES ('102', '2015/04/16', '12:00:00','15');




INSERT INTO ccpayment (`paymentId`, `cardHolderName`, `CardNumber`, `CCMonth`, `CCYear`, `CVV`, `userID`) VALUES ('9000', 'Yatin Kiri', '1122112211221122', '12', '2015', '123', 'ykiri');

