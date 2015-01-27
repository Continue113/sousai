package org.sousai.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.dao.MesgDao;
import org.sousai.domain.*;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MessageBean;

public class MesgDaoHibernate extends SqlHelper implements MesgDao {

	private final String selectMesgBean = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,m.state,c.name) "
			+ "from Message m, Court c, User u where m.courtId=c.id";
	private final String selectMesgBeanForAdmin = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,u.name,m.state,c.name) "
			+ "from Message m, Court c, User u where m.courtId=c.id and u.id=m.userId";
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
	public void deleteMesgs(Long[] ids) throws Exception{
		String strHql = "update Message set state=0 where id in(:ids)";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			q.setParameterList("ids", ids);
			q.executeUpdate();
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
			String hql = selectMesgBeanForAdmin;
			return (List<MessageBean>) session.createQuery(hql).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	private String addPrefixToColumn(String column) {
		String value;
		if (column.equals("courtName")) {
			value = " c.name";
		} else {
			value = " m." + column;
		}
		return value;
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
				columns[i] = " and" + addPrefixToColumn(columns[i]);
			}
			String strWhere = Append_String(" and ", types, columns, args);
			return findPagedByWhereOrderBy(strWhere, currentPage, rows,
					addPrefixToColumn(orderByCol), isAsc);
		} else {
			return findPagedByWhereOrderBy(null, currentPage, rows,
					addPrefixToColumn(orderByCol), isAsc);
		}
	}

	private List<MessageBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectMesgBeanForAdmin;
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
