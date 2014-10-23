create table User_pictures
(
ID bigint not null primary key auto_increment,
pic blob not null,
pic_path varchar(255) not null
);