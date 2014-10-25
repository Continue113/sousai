create table USER
(
ID int not null primary key auto_increment,
NAME varchar(32) not null unique,
PWD varchar(16) binary not null,
EMAIL varchar(32) binary not null,
REGTIME timestamp not null default current_timestamp,
LASTLOGTIME timestamp null,
TYPE char(1) not null default '0',
PICID int null default 1,
constraint foreign key(PICID) references USERPIC(ID) on delete set null on update cascade
);