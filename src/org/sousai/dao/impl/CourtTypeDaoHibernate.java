package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.CourtTypeDao;
import org.sousai.domain.*;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CourtTypeDaoHibernate extends HibernateDaoSupport implements CourtTypeDao {

	@Override
	public CourtType get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(CourtType.class, id);
	}

	@Override
	public Integer save(CourtType courtType) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(courtType);
	}

	@Override
	public void update(CourtType courtType) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(courtType);

	}

	@Override
	public void delete(CourtType courtType) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(courtType);

	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));

	}

	@Override
	public List<CourtType> findAll() {
		// TODO Auto-generated method stub
		return (List<CourtType>)getHibernateTemplate().find("from CourtType");
	}

	@Override
	public List<CourtType> findByMatchTypeId(Integer id) throws Exception{
		// TODO Auto-generated method stub
		return (List<CourtType>)getHibernateTemplate().find("from CourtType where matchId=? or matchId=1", id);
	}

}
