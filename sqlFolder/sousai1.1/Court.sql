create table Court
(
Id int primary key auto_increment,
Name varchar(64) not null,
CourtTypeId int not null default 1,
MatchType varchar(32) not null,
RegionId int null default 1,
Addr varchar(255) not null,
TableNum int(16) unsigned null,
Tel varchar(32) null,
MatchCount int null,
Price varchar(16) null,
WorkTime varchar(64) null,
Intro text null,
Verify char(1) not null default '0',
RelDate date not null,
ModDate date not null,
UserId int null default 1,
constraint foreign key(CourtTypeId) references CourtType(Id) on delete cascade on update cascade,
constraint foreign key(UserId) references User(Id) on delete set null on update cascade,
constraint foreign key(RegionId) references Region(Id) on delete set null on update cascade
);