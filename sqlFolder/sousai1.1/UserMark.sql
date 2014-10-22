create table UserMark
(
Id bigint not null primary key auto_increment,
UserId bigint not null,
MatchId bigint null,
constraint foreign key(UserId) references User(Id) on delete cascade on update cascade,
constraint foreign key(MatchId) references Matches(Id) on delete set null on update cascade
);