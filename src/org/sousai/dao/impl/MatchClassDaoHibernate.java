package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.MatchClassDao;
import org.sousai.domain.MatchClass;
import org.sousai.tools.MyPrint;
import org.springframework.orm.hibernate3.support.*;
public class MatchClassDaoHibernate extends HibernateDaoSupport implements MatchClassDao {

	@Override
	public MatchClass get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(MatchClass.class, id);
	}

	@Override
	public Integer save(MatchClass matchClass) {
		// TODO Auto-generated method stub
		return (Integer)getHibernateTemplate().save(matchClass);
	}

	@Override
	public void update(MatchClass matchClass) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(matchClass);
	}

	@Override
	public void delete(MatchClass matchClass) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(matchClass);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<MatchClass> findAll() {
		// TODO Auto-generated method stub
		return (List<MatchClass>)getHibernateTemplate().find("from MatchClass");
	}

	@Override
	public List<MatchClass> findAllExcept(Integer id) throws Exception{
		// TODO Auto-generated method stub
		MyPrint.myPrint("in findAllExcept");
		return (List<MatchClass>)getHibernateTemplate().find("from MatchClass where id<>?", id);
	}

}
