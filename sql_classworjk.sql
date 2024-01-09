CREATE TABLE store(
storeID INT primary key,
storeName VARCHAR (100) NOT NULL,
storElocation VARCHAR (100) NOT NULL
);

CREATE TABLE books(
    ISBN INT primary key,
    Bookname VARCHAR(100)not null,
    Bookgenre VARCHAR(100),
    Author VARCHAR(100),
    Title VARCHAR(100),
Bookquantiy INT,
storeID INT FOREIGN KEY REFERENCES store(storeID),
);
CREATE TABLE Customer(
    CustomerID VARCHAR(10) primary key,
    Customername VARCHAR(100) NOT NULL,
    CustomerLocation VARCHAR(100),
CustomerGender VARCHAR(6) DEFAULT('MALE'),
CustomerAge INT CHECK(CustomerAge>=18),
);
CREATE TABLE purchase(
    CustomerID VARCHAR(10) FOREIGN KEY REFERENCES Customer(CustomerID),
    ISBN INT FOREIGN KEY REFERENCES books(ISBN),
    quality INT,
    purchasadate DATE,
);
--insert values into the store table
SELECT * FROM store

INSERT into store VALUES
(2001,'GOMYCODE Store','Yaba'),
(2002,'JUMIA', 'Ikeya'),
(2003, 'KONGA', 'VI');


SELECT * FROM books

INSERT INTO books VALUES
(14, 'LOVE ON FIRE', 'ROMANCE','CHIZOBA CHIBUEZE','LOVE ON FIRE', 60, 2001),
(15,'DUNE','SCIENCE FRICTION','FRANK HERBERT','DUNE',50,2002),
(16, 'THE ALCHEMIST','DRAMA', 'THE ALCHEMIST','THE ALCHEMIST',50,2003);

SELECT* FROM Customer
INSERT INTO Customer VALUES 
















CREATE TABLE Classwork(
ID INT primary KEY,
Subclass INT,
Zoning VARCHAR(100) NOT NULL,
Lotfrontage INT,
LotArea INT,
Street VARCHAR(100)
);


SELECT * FROM Classwork

INSERT INTO Classwork VALUES
(1461,20,'RH',80,11622,'PAVE'),
(1462,20,'RL',81,14267,'PAVE'),
(1463,60,'RL',74,13830,'PAVE'),
(1464,60,'RL',78,9978,'PAVE'),
(1465,120,'RL',43,5005,'PAVE'),
(1466,60,'RL',75,10000,'PAVE');






CREATE TABLE Artist(
ArtistID INT primary key,
);

CREATE TABLE Playlist(
PlaylistID INT Primary key,
);

CREATE TABLE Users(
UserID INT Primary key,
);

CREATE TABLE  FOLLOWERS(
FollowerID INT Primary key,
);

CREATE TABLE Album(
AlbumID VARCHAR (100) Primary key,
);




CREATE TABLE TRACK(
TrackID INT Primary key,
TrackTitle varchar(200) NOT NULL,
TrackDate DATE,
TrackGenre varchar(100),
TrackDuration TIME,
ArtistID INT foreign key references Artist(ArtistID),
);

CREATE TABLE CONTAIN(
TrackID INT Foreign key references Track(TrackID),
PlaylistID INT Foreign key references Playlist(PlaylistID),
);

CREATE TABLE LISTEN(
PlaylistID INT Foreign key references Playlist(PlaylistID),
UserID INT Foreign Key references Users(UserID),
ListenGenre varchar(100),
ListenDuration TIME,
ListenLocation varchar(100),
);

CREATE TABLE FOLLOW(
ArtistID INT Foreign Key references Artist(ArtistID),
FollowerID INT Foreign key references Followers(followerID),
FollowerDate DATE,
);

CREATE TABLE PLAY(
UserID INT Foreign Key references Users(UserID),
AlbumID varchar(100) Foreign key references Album(AlbumID),
PlayDate DATE,
Playlocation varchar(100),
PlayTime TIME,
);

CREATE TABLE COMPLIES(
ArtistID INT Foreign Key references Artist(ArtistID),
AlbumID varchar(100) Foreign key references Album(AlbumID),
);



--insert values into TRACK TABLE
SELECT*FROM TRACK

INSERT INTO TRACK VALUES
(1011,'MIXED SIGNAL',1980,'ROCK','03:30:00',5777535),
(1012,'ARCADE',2019,'POP','03:12:00',123),
(1013,'LOVE IN THE DARK',2015,'TORCH BALLAD','04:46:00',8734535),
(1014,'ARE YOU GONE ALREADY',2023,'RAP','03:03:11',1234685),
(1015,'HOLD YOU',2010,'REGGAE','03:02:11',00134256);


SELECT *FROM CONTAIN

INSERT INTO CONTAIN VALUES
(1011,122535);



 
 