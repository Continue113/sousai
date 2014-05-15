-- 插入第一个图片到User_pictures表
insert into user_pictures(pic, pic_path) values("ddfag","dfdfd");

-- 插入第一个admin到users表
insert into users(name, pwd, email) values("admin", "admin", "286886116@qq.com");

insert into court_types(name) values ("体育馆"),("学校"),("小区"),("公共");
-- 插入测试数据到courts表
insert into courts(name,court_type,match_type,addr_id,detail_addr,release_date,modify_date) values ("c1",1,"乒乓球",233,"ddddd","2014-01-01","2014-01-01"), ("c2",2,"篮球", 255, "gggg","2014-11-22","2014-11-22"),("c332",1,"足球",233,"ddddd","2014-11-01","2014-11-02");