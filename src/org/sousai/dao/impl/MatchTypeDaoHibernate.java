package org.sousai.dao.impl;

import java.util.List;

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
	public List<MatchType> findAllByMcIdExcept(Integer mcId, Integer id) {
		// TODO Auto-generated method stub
		MyPrint.myPrint("findAllByMcId");
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where mcid=? and id<>?", mcId, id);
	}

	@Override
	public List<MatchType> findAllExcept(Integer id) {
		// TODO Auto-generated method stub
		
		return (List<MatchType>)getHibernateTemplate().find("from MatchType where id<>?", id);
	}

}
