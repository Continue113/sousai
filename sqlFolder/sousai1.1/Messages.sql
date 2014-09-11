create table Messages
(
ID bigint not null primary key auto_increment,
parentID bigint null,
user_ID bigint not null,
court_ID bigint not null,
time timestamp not null default current_timestamp,
mesg varchar(255) not null,
visible char(1) not null default '0',
-- constraint foreign key(parent_ID) references Messages(ID) on delete cascade on update cascade,
constraint foreign key(user_ID) references Users(ID) on delete cascade on update cascade,
constraint foreign key(court_ID) references Courts(ID) on delete cascade on update cascade
);
