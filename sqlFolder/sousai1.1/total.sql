set foreign_key_checks=0;
create database if not exists sousai;
use sousai;
source F:/SQL/sousai1.1/court_types.sql;
source F:/SQL/sousai1.1/court_pictures.sql;
source F:/SQL/sousai1.1/user_pictures.sql;
source F:/SQL/sousai1.1/courts.sql;
source F:/SQL/sousai1.1/users.sql;
source F:/SQL/sousai1.1/ips.sql;
source F:/SQL/sousai1.1/collection.sql;
source F:/SQL/sousai1.1/matches.sql;
source F:/SQL/sousai1.1/messages.sql;
source F:/SQL/sousai1.1/user_marks.sql;
source F:/SQL/sousai1.1/region-mysql.sql;
source F:/SQL/sousai1.1/match_types.sql;

set foreign_key_checks=1;