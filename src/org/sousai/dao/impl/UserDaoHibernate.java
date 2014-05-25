package org.sousai.dao.impl;

import java.util.*;

import org.sousai.domain.*;
import org.sousai.dao.*;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.hibernate.SessionFactory;
import org.hibernate.Session;
import org.hibernate.Query;
import org.hibernate.HibernateException;

import java.sql.SQLException;
import java.util.List;

public class UserDaoHibernate extends HibernateDaoSupport
		implements UserDao
{
	public User get(Long id)
	{
		return getHibernateTemplate()
				.get(User.class, id);
	}

	@Override
	public Long save(User user) {
		// TODO Auto-generated method stub
		//System.out.println("save now turn to getHibernateTemplate().save "+user.getId()+"   "+ user.getName()+"   "+user.getPwd()+"   ");
		return Long.parseLong(getHibernateTemplate()
				.save(user).toString());
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(user);
	}

	@Override
	public void delete(User user) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(user);
	}

	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return (List<User>)getHibernateTemplate()
				.find("from User");
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
		
	}

	@Override
	public List<User> findByNameAndPass(User user) {
		// TODO Auto-generated method stub
		return (List<User>)getHibernateTemplate()
				.find("from User u where u.name=? and u.pwd=?", user.getName(), user.getPwd());
	}

	@Override
	public User findByName(String name) {
		// TODO Auto-generated method stub
		List<User> user = (List<User>)getHibernateTemplate()
				.find("from User u where u.name=?", name);
		if(user != null && user.size() > 0)
		{
			return user.get(0);
		}
		return null;
	}
}
