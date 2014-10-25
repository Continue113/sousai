create table MESSAGE
(
ID bigint not null primary key auto_increment,
PARENTID bigint null,
USERID int not null,
COURTID int not null,
TIME timestamp not null default current_timestamp,
MESG varchar(255) not null,
USERNAME varchar(255) not null,
-- constraint foreign key(parent_ID) references Messages(ID) on delete cascade on update cascade,
constraint foreign key(USERID) references USER(ID) on delete cascade on update cascade,
constraint foreign key(COURTID) references COURT(ID) on delete cascade on update cascade
);