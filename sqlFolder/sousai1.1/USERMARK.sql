create table USERMARK
(
ID int not null primary key auto_increment,
USERID int not null,
MATCHID int null,
constraint foreign key(USERID) references USER(ID) on delete cascade on update cascade,
constraint foreign key(MATCHID) references MATCHES(ID) on delete set null on update cascade
);