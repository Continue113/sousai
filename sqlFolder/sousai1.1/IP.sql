create table IP
(
ID int not null primary key auto_increment,
USERID int not null,
IPS varchar(40) null,
NUM Int not null default 0,
constraint foreign key(USERID) references USER(ID) on delete cascade on update cascade
);