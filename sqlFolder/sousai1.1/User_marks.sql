create table User_marks
(
ID bigint not null primary key auto_increment,
User_ID bigint not null,
Match_ID bigint not null,
constraint foreign key(User_ID) references Users(ID) on delete cascade on update cascade,
constraint foreign key(Match_ID) references Matches(ID) on delete cascade on update cascade
);