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

}
