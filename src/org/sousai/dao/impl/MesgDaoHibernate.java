package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.sousai.dao.MesgDao;
import org.sousai.domain.*;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MessageBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MesgDaoHibernate extends HibernateDaoSupport implements MesgDao {

	@Override
	public Message get(Long id) {
		return getHibernateTemplate().get(Message.class, id);
	}

	@Override
	public Long save(Message message) {
		MyPrint.myPrint("userId = "+message.getUserId());
		return (Long)getHibernateTemplate().save(message);
	}

	@Override
	public void update(Message message) {
		getHibernateTemplate().update(message);
	}

	@Override
	public void delete(Message message) {
		getHibernateTemplate().delete(message);
	}

	@Override
	public void delete(Long id) {
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<Message> getByUserId(Integer userId) {
		return (List<Message>)getHibernateTemplate().find("from Message where UserId=?", userId);
	}

	@Override
	public List<Message> getByCourtId(Integer courtId) {
		return (List<Message>)getHibernateTemplate().find("from Message where courtId=?", courtId);
	}

	@Override
	public List<Message> getByParentId(Long parentId) {
		return (List<Message>)getHibernateTemplate().find("from Message where parentId=?", parentId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MessageBean> findAll() {
		try{
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
		String hql = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,c.name) "
				+ "from Message m, Court c where m.courtId=c.id";
		return (List<MessageBean>)session.createQuery(hql).list();
		}catch(Exception e){
			e.printStackTrace();
			return null;
		}
		
	}

}
