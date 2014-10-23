create table CourtPic
(
Id int not null primary key auto_increment,
Pic blob not null,
Path varchar(255) not null,
CourtId int not null default 1,
constraint foreign key(CourtId) references Court(Id)
);