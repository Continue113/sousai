create table Ip
(
Id int not null primary key auto_increment,
UserId int not null,
Ips varchar(40) null,
Num Int not null default 0,
constraint foreign key(UserId) references User(Id) on delete cascade on update cascade
);