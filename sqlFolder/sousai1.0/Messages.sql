create table Messages
(
ID bigint not null primary key auto_increment,
parent_ID bigint not null,
user_ID bigint not null,
user_name varchar(32) not null,
court_ID bigint not null,
court_time timestamp not null default current_timestamp,
mesg varchar(255) not null,
show char(1) not null default 0,
-- constraint foreign key(parent_ID) references Messages(ID),
constraint foreign key(user_ID) references Users(ID),
constraint foreign key(user_name) references Users(name),
constraint foreign key(court_ID) references Courts(ID)
);
