create table CourtType
(
Id int not null primary key auto_increment,
Name varchar(16) not null,
MatchId int null default 1,
constraint foreign key(MatchId) references MatchType(Id) on delete cascade on update cascade
);