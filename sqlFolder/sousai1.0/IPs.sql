create table IPs
(
ID bigint not null primary key auto_increment,
User_ID bigint not null,
IP varchar(40) null,
Num Int not null default 0,
constraint foreign key(User_ID) references Users(ID)
);