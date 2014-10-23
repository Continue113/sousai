create table users
(
Users_ID bigint not null primary key auto_increment,
Users_name varchar(32) not null unique,
Users_pwd varchar(16) not null,
Users_email varchar(32) not null,
Users_reg_time timestamp not null default current_timestamp,
Users_last_log_time timestamp not null,
Users_type char(1) not null default 0,
Users_pic_id bigint not null default 0,
constraint foreign key(Users_pic_id) references user_pictures(UP_id)
);