create table match_classes
(
	Id int not null primary key auto_increment,
	Name varchar(16) not null
);
insert into match_classes values(1,'默认');