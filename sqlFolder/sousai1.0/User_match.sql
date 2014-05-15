create table User_match
(
ID bigint not null primary key auto_increment,
user_ID bigint not null,
user_name varchar(32) not null,
match_ID bigint not null,
constraint foreign key(user_ID) references Users(ID),
constraint foreign key(user_name) references Users(name),
constraint foreign key(match_ID) references Matches(ID)
);