create table UserPic
(
Id int not null primary key auto_increment,
Pic blob not null,
Path varchar(255) not null
);