create table MATCHTYPE
(
ID int not null primary key auto_increment,
NAME varchar(16) not null,
MCID int not null,
constraint foreign key(MCID) references MATCHCLASS(ID)
);
