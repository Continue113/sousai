create table MATCHES
(
ID int not null primary key auto_increment,
NAME varchar(255) not null,
TYPE varchar(32) not null,
BEGINTIME date not null,
ENDTIME date not null,
COURTID int null,
RULE text null,
RELTIME timestamp not null default current_timestamp,
VERIFY char not null default '0',
SCORE Text null,
USERID int null,
constraint foreign key(USERID) references USER(ID) on delete set null on update cascade,
constraint foreign key(COURTID) references COURT(ID) on delete set null on update cascade
);