create table IP
(
Id bigint not null primary key auto_increment,
UserId bigint not null,
IP varchar(40) null,
Num Int not null default 0,
constraint foreign key(UserId) references User(Id) on delete cascade on update cascade
);