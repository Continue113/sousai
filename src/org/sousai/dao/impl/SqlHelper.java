package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class SqlHelper extends HibernateDaoSupport {

	public List<?> findModelList_HQL(String strHql) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findPagedModelList_HQL(String strHql, int currentPage,
			int pageSize) {
		List<?> list = null;
		try {
			// Session session = new
			// Configuration().configure().buildSessionFactory()
			// .getCurrentSession();
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			q.setMaxResults(pageSize);
			q.setFirstResult((currentPage - 1) * pageSize);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findPagedModelList_SQL(String strSql, int currentPage,
			int pageSize, Class<?> c) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createSQLQuery(strSql).addEntity(c);
			q.setMaxResults(pageSize);
			q.setFirstResult((currentPage - 1) * pageSize);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<?> findModelList_SQL(String strSql, Class<?> c) {
		List<?> list = null;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createSQLQuery(strSql).addEntity(c);
			list = q.list();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public int count(String strHql) {
		int value = -1;
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			value = (Integer) session.createQuery(strHql).uniqueResult();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return value;
	}
}
