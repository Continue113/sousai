create table Matches
(
ID bigint not null primary key auto_increment,
name varchar(255) not null,
type varchar(32) not null,
begin_time date not null,
end_time date not null,
court_ID bigint not null,
rule text null,
release_time timestamp not null default current_timestamp,
verify char not null default '0',
score Text null,
constraint foreign key(court_ID) references Courts(ID)
);