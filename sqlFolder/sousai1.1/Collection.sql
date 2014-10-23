create table Collection
(
Id bigint not null primary key auto_increment,
MatchName varchar(255) null,
MatchDate date null,
MatchCourt varchar(255) null,
Source varchar(255) not null,
DetailIntro text not null
);