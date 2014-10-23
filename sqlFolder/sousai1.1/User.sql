create table User
(
Id int not null primary key auto_increment,
Name varchar(32) not null unique,
Pwd varchar(16) binary not null,
Email varchar(32) binary not null,
RegTime timestamp not null default current_timestamp,
LastLogTime timestamp null,
Type char(1) not null default '0',
PicId int null default 1,
constraint foreign key(PicId) references UserPic(Id) on delete set null on update cascade
);