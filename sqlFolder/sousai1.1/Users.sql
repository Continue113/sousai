create table users
(
ID bigint not null primary key auto_increment,
name varchar(32) not null unique,
pwd varchar(16) not null,
email varchar(32) not null,
reg_time timestamp not null default current_timestamp,
last_log_time timestamp not null default current_timestamp,
type char(1) not null default '0',
pic_id bigint null default 1,
constraint foreign key(pic_id) references user_pictures(id) on delete set null on update cascade
);