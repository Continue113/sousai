create table MatchType
(
Id int not null primary key auto_increment,
Name varchar(16) not null,
MCId int not null,
constraint foreign key(MCId) references MatchClass(Id)
);
