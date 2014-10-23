create table User_court
(
ID bigint not null primary key auto_increment,
user_ID bigint not null,
user_name varchar(32) not null,
court_ID bigint not null,
constraint foreign key(user_ID) references users(ID),
constraint foreign key(user_name) references users(name),
constraint foreign key(court_ID) references matches(ID)
);