create table Collection
(
ID bigint not null primary key auto_increment,
match_name varchar(255) null,
match_date date null,
match_court varchar(255) null,
source varchar(255) not null,
detail_intro text not null
);