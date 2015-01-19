package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.sousai.dao.UserMarkDao;
import org.sousai.domain.UserMark;
import org.sousai.vo.MatchBean;

public class UserMarkDaoHibernate extends SqlHelper implements UserMarkDao {

	@Override
	public UserMark get(Integer id) {
		return (UserMark)getHibernateTemplate().get(UserMark.class, id);
	}

	@Override
	public Long save(UserMark userMark) throws Exception{
		return Long.parseLong(getHibernateTemplate().save(userMark).toString());
	}

	@Override
	public void update(UserMark userMark) {
		getHibernateTemplate().update(userMark);
	}

	@Override
	public void delete(UserMark userMark) {
		getHibernateTemplate().delete(userMark);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));
	}
	
	@Override
	public Boolean markMatchByUserId(Integer userId, Integer matchId) {
		Boolean value = false;
		
		return value;
	}
	
	@Override
	public List<MatchBean> findByMarkingUserId(Integer userId, int currentPage,
			int rows) {
		String hql = "select new org.sousai.vo.MatchBean(m.id,m.name,m.type,"
				+ "m.beginTime,m.endTime,m.courtId,c.name,m.rule,m.relTime,"
				+ "m.verify,m.score,m.userId,u.name, m.region) from Match m, Court c, User u, UserMark um "
				+ "where m.courtId=c.id and u.id=m.userId and um.userId=? and m.id=um.matchId";
		// String hql = selectMatchBean;
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<MatchBean>) session.createQuery(hql)
					.setInteger(0, userId).setMaxResults(rows)
					.setFirstResult((currentPage - 1) * rows).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}


}
