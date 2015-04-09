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
		return getHibernateTemplate().get(MatchType.class, id);
	}

	@Override
	public Integer save(MatchType matchType) {
		return (Integer)getHibernateTemplate().save(matchType);
	}

	@Override
	public void update(MatchType matchType) {
		getHibernateTemplate().update(matchType);
	}

	@Override
	public void delete(MatchType matchType) {
		getHibernateTemplate().delete(matchType);
		
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<MatchType> findAllByMcId(Integer mcId) {
		MyPrint.myPrint("findAllByMcId");
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where mcId=?", mcId);
	}

	@Override
	public List<MatchType> findAllExcept(Integer id) {
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

	@Override
	public List<MatchType> getByPId(Integer pId) {
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where pId=?", pId);
	}

}
