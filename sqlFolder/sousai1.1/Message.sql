create table Message
(
Id bigint not null primary key auto_increment,
ParentID bigint null,
UserID bigint not null,
CourtID bigint not null,
Time timestamp not null default current_timestamp,
Mesg varchar(255) not null,
UserName varchar(255) not null,
-- constraint foreign key(parent_ID) references Messages(ID) on delete cascade on update cascade,
constraint foreign key(UserId) references User(Id) on delete cascade on update cascade,
constraint foreign key(CourtId) references Court(Id) on delete cascade on update cascade
);
