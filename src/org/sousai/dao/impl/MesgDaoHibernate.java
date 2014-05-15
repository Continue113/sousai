package org.sousai.dao.impl;

import org.sousai.dao.MesgDao;
import org.sousai.domain.*;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MesgDaoHibernate extends HibernateDaoSupport implements MesgDao {

	@Override
	public Message get(Long id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Message.class, id);
	}

}
