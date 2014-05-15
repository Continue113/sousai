create table courts
(
ID bigint primary key auto_increment,
name varchar(64) not null,
court_type int not null,
match_type varchar(32) not null,
addr_id int null default 0,
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
userId bigint null default 1,
constraint foreign key(court_type) references Court_types(id) on delete cascade on update cascade,
constraint foreign key(userId) references users(id) on delete set null on update cascade,
constraint foreign key(addr_id) references region(region_id) on delete set null on update cascade
);