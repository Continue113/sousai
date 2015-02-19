package org.sousai.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.dao.UserMarkDao;
import org.sousai.domain.UserMark;
import org.sousai.vo.MatchBean;

public class UserMarkDaoHibernate extends SqlHelper implements UserMarkDao {

	@Override
	public UserMark get(Integer id) throws Exception{
		return (UserMark) getHibernateTemplate().get(UserMark.class, id);
	}

	@Override
	public Long save(UserMark userMark) throws Exception {
		return Long.parseLong(getHibernateTemplate().save(userMark).toString());
	}

	@Override
	public void update(UserMark userMark) throws Exception{
		getHibernateTemplate().update(userMark);
	}

	@Override
	public void delete(UserMark userMark) throws Exception{
		getHibernateTemplate().delete(userMark);
	}

	@Override
	public void delete(Integer id) throws Exception{
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public Boolean markMatchByUserId(Integer userId, Integer matchId) throws Exception {
		Boolean value = false;
		return value;
	}

	@Override
	public List<MatchBean> findByMarkingUserId(Integer userId, int currentPage,
			int rows) throws Exception{
		String hql = "select new org.sousai.vo.MatchBean(m.id,m.name,m.type,"
				+ "m.beginTime,m.endTime,m.courtId,c.name,m.rule,m.relTime,"
				+ "m.verify,m.score,m.userId,u.name, c.region) from Match m, Court c, User u, UserMark um "
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

	@Override
	public int countByMarkingUserId(Integer userId) throws Exception{
		String strHql = "select count(*) from Match m, Court c, User u, UserMark um "
				+ "where m.courtId=c.id and u.id=m.userId and um.userId=? and m.id=um.matchId";
		List<Integer> params = new ArrayList<Integer>();
		params.add(userId);
		return count(strHql, params);
	}

	@Override
	public int countByMarkedMatchId(Integer matchId) throws Exception {
		String strHql = "select count(*) from UserMark um where matchId=?";
		List<Integer> params = new ArrayList<Integer>();
		params.add(matchId);

		return count(strHql, params);
	}

	@Override
	public Map<Integer, Integer> countByMatchIds(Integer[] ids) throws Exception{
		try {
			Map<Integer, Integer> rs = new HashMap<Integer, Integer>();
			String hql = "select matchId,count(*) from UserMark um where matchId in (:ids) group by matchId";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(hql);
			q.setParameterList("ids", ids);
			int i=0;
			for (Object[] ob : (List<Object[]>) q.list()) {
				rs.put((Integer) ob[0], Integer.valueOf(ob[1].toString()));
			}
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
