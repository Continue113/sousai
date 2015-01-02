package org.sousai.dao.impl;


import org.sousai.domain.*;
import org.sousai.dao.*;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;
import org.hibernate.Session;

import java.util.List;

public class UserDaoHibernate extends SqlHelper implements UserDao {
	public User get(Integer id) {
		return getHibernateTemplate().get(User.class, id);
	}

	@Override
	public Long save(User user) {
		// System.out.println("save now turn to getHibernateTemplate().save "+user.getId()+"   "+
		// user.getName()+"   "+user.getPwd()+"   ");
		MyPrint.myPrint("" + user.getId() + "name" + user.getName() + "pwd"
				+ user.getPwd() + "Email" + user.getEmail() + "type"
				+ user.getType());
		try {
			return Long.parseLong(getHibernateTemplate().save(user).toString());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		/*
		 * String test; try{ test =
		 * getHibernateTemplate().save(user).toString(); MyPrint.myPrint(test);
		 * } catch(Exception e) { e.printStackTrace(); } return (long) 000000;
		 */
	}

	@Override
	public void update(User user){
		try{
		getHibernateTemplate().update(user);
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void delete(User user) {
		getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserBean> findAll() {
		String hql = "select new org.sousai.vo.UserBean(u.id,u.name,u.email,u.type,u.regTime,u.lastLogTime) "
				+ "from User u";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<UserBean>) session.createQuery(hql).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));

	}

	@Override
	public List<User> findByNameAndPass(User user) {
		return (List<User>) getHibernateTemplate().find(
				"from User u where u.name=? and u.pwd=?", user.getName(),
				user.getPwd());
	}

	@Override
	public User findByName(String name) {
		List<User> user = (List<User>) getHibernateTemplate().find(
				"from User u where u.name=?", name);
		if (user != null && user.size() > 0) {
			return user.get(0);
		}
		return null;
	}
	
	@Override
	public int countAllUser(){
		String strHql = "select count(*) from User";
		return count(strHql);
	}

	@Override
	public List<UserBean> findPagedAll(int currentPage, int rows) {
		String strHql = "from User";
		return (List<UserBean>) findPagedModelList_HQL(strHql, currentPage, rows);
	}
}
