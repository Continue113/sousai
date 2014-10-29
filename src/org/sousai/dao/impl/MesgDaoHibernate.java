package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.sousai.dao.MesgDao;
import org.sousai.domain.*;
import org.sousai.vo.MessageBean;
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

	@SuppressWarnings("unchecked")
	@Override
	public List<MessageBean> findAll() {
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
		String hql = "select new org.sousai.vo.messageBean(m.id,m.parentId,m.userId,m.courtId,m.time,m.userName,c.Name) "
				+ "from Message m, Court c where m.coutId=c.id";
		return (List<MessageBean>)session.createQuery(hql).list();
		
	}

}
