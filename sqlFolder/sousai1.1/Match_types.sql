﻿create table match_types
(
Id int not null primary key auto_increment,
Name varchar(16) not null,
MCId int not null,
constraint foreign key(MCId) references Match_classes(Id)
);
insert into match_types values(1, '默认',1);