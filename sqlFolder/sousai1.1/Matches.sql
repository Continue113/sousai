create table Matches
(
Id int not null primary key auto_increment,
Name varchar(255) not null,
Type varchar(32) not null,
BeginTime date not null,
EndTime date not null,
CourtId int null,
Rule text null,
ReleaseTime timestamp not null default current_timestamp,
Verify char not null default '0',
Score Text null,
UserId int null,
constraint foreign key(UserId) references User(Id) on delete set null on update cascade,
constraint foreign key(CourtId) references Court(Id) on delete set null on update cascade
);