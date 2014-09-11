package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.MesgDao;
import org.sousai.domain.*;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MesgDaoHibernate extends HibernateDaoSupport implements MesgDao {

	@Override
	public Message get(Long id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Message.class, id);
	}

	@Override
	public Long save(Message message) {
		// TODO Auto-generated method stub
		return (Long)getHibernateTemplate().save(message);
	}

	@Override
	public void update(Message message) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(message);
	}

	@Override
	public void delete(Message message) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(message);
	}

	@Override
	public void delete(Long id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<Message> getByUserId(Long userId) {
		// TODO Auto-generated method stub
		return (List<Message>)getHibernateTemplate().find("from Message where User_id=?", userId);
	}

	@Override
	public List<Message> getByCourtId(Long courtId) {
		// TODO Auto-generated method stub
		return (List<Message>)getHibernateTemplate().find("from Message where court_id=?", courtId);
	}

	@Override
	public List<Message> getByParentId(Long parentId) {
		// TODO Auto-generated method stub
		return (List<Message>)getHibernateTemplate().find("from Message where parentId=?", parentId);
	}

}
