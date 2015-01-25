create table COURT
(
ID int primary key auto_increment,
NAME varchar(64) not null,
COURTTYPEID int not null default 1,
MATCHTYPE varchar(32) not null,
REGIONID int null default 1,
ADDR varchar(255) not null,
TABLENUM int(16) unsigned null,
TEL varchar(32) null,
MATCHCOUNT int null,
PRICE varchar(16) null,
WORKTIME varchar(64) null,
INTRO text null,
VERIFY char(1)  null default '0',
RELDATE timestamp not null default CURRENT_TIMESTAMP,
MODDATE date null,
USERID int null default 1,
REGION VARCHAR(64) NOT NULL,
constraint foreign key(COURTTYPEID) references COURTTYPE(ID) on delete cascade on update cascade,
constraint foreign key(USERID) references USER(ID) on delete set null on update cascade,
constraint foreign key(REGIONID) references REGION(ID) on delete set null on update cascade
);