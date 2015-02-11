create table COURTTYPE
(
ID int not null primary key auto_increment,
NAME varchar(16) not null,
MATCHTYPEID int null default 1,
constraint foreign key(MATCHTYPEID) references MATCHTYPE(ID) on delete cascade on update cascade
);