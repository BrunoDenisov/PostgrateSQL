
CREATE TABLE Costumer (
 	Id serial primary key,
	First_Name varchar(50) not null,
	Last_Name varchar(50) not null,
	Gender char(1),
	Emial varchar(100) unique,
	PhoneNumber int
);

create table if not exists Reservation (
	Id serial primary key,
	Costumer_Id int,
	Movie_Id int,
	Paid_State bool,
	Active_State bool,
	constraint FK_Reservation_Movie foreign key(Movie_id) references Movie(Id),
	constraint FK_Reservation_Costumer FOREIGN KEY(Costumer_Id) references Costumer(Id)
);

create table Cinema (
	Id serial primary key,
	City varchar(50),
	Cinema_Name varchar(50)
);

create table Movie (
	Id serial primary key,
	Name varchar(50),
	Langauge varchar(50),
	Pg_Rating varchar(10),
	Price numeric(15,4),
	Cinema_Id int,
	constraint FK_Movice_Cinema_Id foreign key(Cinema_Id) references Cinema(Id)
);

create table Screening (
	Id serial primary key,
	Sreen_Time timestamp,
	Movie_Id int,
	constraint FK_Screening_Movie_Id foreign key(Movie_Id) references Movie(Id)
);