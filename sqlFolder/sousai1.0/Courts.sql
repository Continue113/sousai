create table courts
(
ID bigint primary key auto_increment,
name varchar(64) not null,
court_type int not null,
match_type int not null,
addr_province varchar(16) not null,
addr_city varchar(16) not null,
addr_zone varchar(16) not null,
detail_addr varchar(255) not null,
table_num int(16) unsigned null,
tel varchar(32) null,
matches int null,
price varchar(16) null,
work_time varchar(64) null,
intro text null,
verify char(1) not null default '0',
release_date date not null,
modify_date date not null,
picId bigint null,
constraint foreign key(picid) references Court_pictures(id)
constraint foreign key(court_type) references Court_types(id)
);