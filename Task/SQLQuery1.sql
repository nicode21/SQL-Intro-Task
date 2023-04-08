create database Course

USE Course


create table Users(
	[id] INT,
	[Name] nvarchar(50),
	[Surname] nvarchar(50),
	[Age] INT,
	[Email] nvarchar(50),
	[IsDeleted] bit
)

create table Educations(
	[id] INT,
	[Name] nvarchar(50),
)

create table Teachers(
	[id] INT,
	[FullName] nvarchar(50),
	[Age] INT,
	[Email] nvarchar(50),
	[Adress] nvarchar(50),
	[IsDeleted] bit
)

INSERT INTO Users (Id, Name, Surname, Age, Email, IsDeleted)
VALUES (1, 'Nicat', 'Novruzzade', 21, 'nicat@gmail.com', 0),
(2, 'Murad', 'Ceferov', 19, 'murad@gmail.com', 0),
(3, 'Resul', 'Hesenov', 15, 'resul@gmail.com', 0),
(4, 'Musa', 'Afandiyev', 19, 'musa@gmail.com', 0),
(5, 'Fatime', 'Bayramova', 20, 'fatime@gmail.com', 0)

INSERT INTO Educations (Id, Name)
VALUES (1, 'a'),
(2, 'b'),
(3, 'c'),
(4, 'd'),
(5, 'e')

INSERT INTO Teachers (Id, FullName, Age, Email, Adress, IsDeleted)
VALUES (1, 'Cavid1', 21, 'cavid@gmail.com', 'Ehmedli', 0),
(2, 'Cavid2', 19, 'cavid@gmail.com', 'Ehmedli', 0),
(3, 'Cavid3', 15, 'cavid@gmail.com', 'Ehmedli', 0),
(4, 'Cavid4', 19, 'cavid@gmail.com', 'Ehmedli', 0),
(5, 'Cavid5', 20, 'cavid@gmail.com', 'Ehmedli', 0)


Delete TOP (5) FROM Users

Select * from Users

Select * from Users where [Age] < 20

Select COUNT(*) from Users

UPDATE Teachers
SET IsDeleted = 1
WHERE [Id] = 5

Select [FullName] [Adress], [Age] from Teachers where [IsDeleted] = 1



UPDATE Teachers
SET Age = 32
WHERE [Id] = 1


Select Count(*) from Teachers where [Age]>30
