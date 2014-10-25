create table COURTPIC
(
ID int not null primary key auto_increment,
PIC bLOB not null,
PATH varchar(255) not null,
COURTID int not null default 1,
constraint foreign key(COURTID) references COURT(ID)
);