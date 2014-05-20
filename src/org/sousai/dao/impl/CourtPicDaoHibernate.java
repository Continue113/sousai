package org.sousai.dao.impl;

import org.sousai.dao.CourtPicDao;
import org.sousai.domain.*;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CourtPicDaoHibernate extends HibernateDaoSupport implements CourtPicDao {

	@Override
	public CourtPic get(Long id)
	{
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(CourtPic.class, id);
	}

	@Override
	public Long save(CourtPic courtPic) {
		// TODO Auto-generated method stub
		return Long.parseLong(getHibernateTemplate().save(courtPic).toString());
	}

	@Override
	public void update(CourtPic courtPic) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(courtPic);
	}

	@Override
	public void delete(CourtPic courtPic) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(courtPic);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

}
