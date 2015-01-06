package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.dao.MesgDao;
import org.sousai.domain.*;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MatchBean;
import org.sousai.vo.MessageBean;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MesgDaoHibernate extends SqlHelper implements MesgDao {

	private final String selectMesgBean = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,c.name) "
			+ "from Message m, Court c where m.courtId=c.id";

	public MesgDaoHibernate() {
		super();
	}

	@Override
	public Message get(Long id) {
		return getHibernateTemplate().get(Message.class, id);
	}

	@Override
	public Long save(Message message) {
		MyPrint.myPrint("userId = " + message.getUserId());
		MyPrint.myPrint("userName = " + message.getUserName());
		return (Long) getHibernateTemplate().save(message);
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
		return (List<Message>) getHibernateTemplate().find(
				"from Message where UserId=?", userId);
	}

	@Override
	public List<Message> getByCourtId(Integer courtId) {
		return (List<Message>) getHibernateTemplate().find(
				"from Message where courtId=?", courtId);
	}

	@Override
	public List<Message> getByParentId(Long parentId) {
		return (List<Message>) getHibernateTemplate().find(
				"from Message where parentId=?", parentId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MessageBean> findAll() {
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			String hql = selectMesgBean;
			return (List<MessageBean>) session.createQuery(hql).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public List<MessageBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				types[i] = 2;
				args[i] = keyValue;
				if (columns[i].equals("courtName")) {
					columns[i] = " and c." + columns[i];
				} else {
					columns[i] = " and m." + columns[i];
				}
			}
			String strWhere = Append_String(" and ", types, columns, args);
			return findPagedByWhereOrderBy(strWhere, currentPage, rows, " m."
					+ orderByCol, isAsc);
		} else {
			return findPagedByWhereOrderBy(null, currentPage, rows, " m."
					+ orderByCol, isAsc);
		}
	}

	private List<MessageBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectMesgBean;
		if (!CommonUtils.isNullOrEmpty(strWhere)) {
			hql += strWhere;
		}
		if (!CommonUtils.isNullOrEmpty(orderByCol)) {
			hql = String.format("%1$s order by %2$s ", hql, orderByCol);
			if (!CommonUtils.isNullOrEmpty(isAsc) && isAsc == false) {
				hql += " DESC ";
			}
		}
		Query q = session.createQuery(hql);
		return (List<MessageBean>) findPagedModelList_HQL(q, currentPage, rows);
	}

	@Override
	public int countCourt() {
		return count(" select count(*) from Message");
	}

}
