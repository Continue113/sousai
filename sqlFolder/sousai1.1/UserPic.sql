create table UserPic
(
Id bigint not null primary key auto_increment,
Pic blob not null,
PicPath varchar(255) not null
);