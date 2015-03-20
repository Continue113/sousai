package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.dao.MatchTypeDao;
import org.sousai.domain.MatchType;
import org.sousai.tools.MyPrint;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MatchTypeDaoHibernate extends HibernateDaoSupport implements MatchTypeDao {

	@Override
	public MatchType get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(MatchType.class, id);
	}

	@Override
	public Integer save(MatchType matchType) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(matchType);
	}

	@Override
	public void update(MatchType matchType) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(matchType);
	}

	@Override
	public void delete(MatchType matchType) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(matchType);
		
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<MatchType> findAllByMcId(Integer mcId) {
		// TODO Auto-generated method stub
		MyPrint.myPrint("findAllByMcId");
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where mcId=?", mcId);
	}

	@Override
	public List<MatchType> findAllExcept(Integer id) {
		// TODO Auto-generated method stub
		
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where id<>?", id);
	}

	@Override
	public void deleteMatchTypes(Integer[] ids) throws Exception{
		String strHql = "delete from MatchType where id in (:ids)";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		Query q = session.createQuery(strHql);
		q.setParameterList("ids", ids);
		q.executeUpdate();
	}

}
