create table Court_pictures
(
ID bigint not null primary key auto_increment,
pic blob not null,
pic_path varchar(255) not null,
courtId bigint not null default 1,
constraint foreign key(courtId) references Courts(id)
);