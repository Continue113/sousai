package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.CourtTypeDao;
import org.sousai.domain.*;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CourtTypeDaoHibernate extends HibernateDaoSupport implements CourtTypeDao {

	@Override
	public CourtType get(Integer id) {
		return getHibernateTemplate().get(CourtType.class, id);
	}

	@Override
	public Integer save(CourtType courtType) {
		return (Integer)getHibernateTemplate().save(courtType);
	}

	@Override
	public void update(CourtType courtType) {
		getHibernateTemplate().update(courtType);

	}

	@Override
	public void delete(CourtType courtType) {
		getHibernateTemplate().delete(courtType);

	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));

	}

	@Override
	public List<CourtType> findAll() {
		return (List<CourtType>)getHibernateTemplate().find("from CourtType");
	}

	@Override
	public List<CourtType> findByMatchTypeId(Integer id, boolean isDefault) throws Exception{
		String strSql = "from CourtType where matchTypeId=?";
		if(isDefault)
		{
			strSql += " or matchTypeId=1";
		}
		return (List<CourtType>)getHibernateTemplate().find(strSql, id);
	}
}
