create table UserMark
(
Id int not null primary key auto_increment,
UserId int not null,
MatchId int null,
constraint foreign key(UserId) references User(Id) on delete cascade on update cascade,
constraint foreign key(MatchId) references Matches(Id) on delete set null on update cascade
);