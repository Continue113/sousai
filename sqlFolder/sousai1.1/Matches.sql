create table Matches
(
ID bigint not null primary key auto_increment,
name varchar(255) not null,
type varchar(32) not null,
begin_time date not null,
end_time date not null,
court_ID bigint null,
rule text null,
release_time timestamp not null default current_timestamp,
verify char not null default '0',
score Text null,
userId bigint null,
constraint foreign key(userId) references Users(ID) on delete set null on update cascade,
constraint foreign key(court_ID) references Courts(ID) on delete set null on update cascade
);