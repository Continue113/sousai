create table CourtPic
(
Id bigint not null primary key auto_increment,
Pic blob not null,
PicPath varchar(255) not null,
CourtId bigint not null default 1,
constraint foreign key(CourtId) references Court(Id)
);