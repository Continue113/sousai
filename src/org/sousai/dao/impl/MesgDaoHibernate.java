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

	private final String selectMesgBean = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,m.state,c.name,u.picId) "
			+ "from Message m, Court c, User u where m.courtId=c.id and u.id=m.userId";
	private final String selectMesgBeanForAdmin = "select new org.sousai.vo.MessageBean(m.id,m.parentId,m.rootId,m.userId,m.courtId,m.time,m.mesg,m.userName,u.name,m.state,c.name,u.picId) "
			+ "from Message m, Court c, User u where m.courtId=c.id and u.id=m.userId";

	public MesgDaoHibernate() {
		super();
	}

	@Override
	public Message get(Long id) {
		return getHibernateTemplate().get(Message.class, id);
	}

	@Override
	public Long save(Message message) throws Exception {
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
	public void deleteMesgs(Long[] ids) throws Exception {
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
	public List<MessageBean> getByCourtId(Integer courtId, Integer currentPage, Integer rows) {
//		return (List<Message>) getHibernateTemplate().find(
//				"from Message where courtId=?", courtId);
		try {
			String strWhere = " and c.id="+courtId;
			return findPagedByWhereOrderBy(strWhere, currentPage, rows, " m.time ", null, false);
//			return (List<MessageBean>) session.createQuery(hql).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
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
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		String strWhere = null;
		String[] columnsCopy = new String[columns.length];
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				types[i] = 2;
				args[i] = keyValue;
				columnsCopy[i] = " and" + addPrefixToColumn(columns[i]);
			}
			strWhere = Append_String(" and ", types, columnsCopy, args);
		}
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " and m.state=1";
			} else {
				strWhere += " and m.state=1";
			}
		}
		return findPagedByWhereOrderBy(strWhere, currentPage, rows,
				addPrefixToColumn(orderByCol), isAsc, true);

	}

	/**
	 * 
	 * @param strWhere 前边需加and
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 * @throws Exception
	 */
	private List<MessageBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc, boolean isForAdmin)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = null;
		if(isForAdmin){
			hql = selectMesgBeanForAdmin;
		}
		else{
			hql = selectMesgBean;
		}
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
	public int countCourt(Integer selType) {
		String strHql = " select count(*) from Message";
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strHql)) {
				strHql = " where state=1";
			} else {
				strHql += " where state=1";
			}
		}
		return count(strHql);
	}

	@Override
	public int countByCourtId(Integer courtId) throws Exception{
		String strHql = String.format("select count(*) from Message where courtId=%1$s and state=1",courtId);
		return count(strHql);
	}

	@Override
	public int countMessageByAdmin(String[] columns, String keyValue,
			Integer selType) throws Exception {
		String strWhere = null;
		String[] columnsCopy = new String[columns.length];
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
			int[] types = new int[columns.length];
			int[] relations = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				types[i] = 2;
				// args[i] = new String(keyValue.getBytes("UTF-8"));
				args[i] = keyValue;
				relations[i] = 1;
				// 列前加上表别名
				columnsCopy[i] = addPrefixToColumn(columns[i]);
			}
			strWhere = Append_StringV2(" ", types, columnsCopy, args, relations, false);
		}

		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " state=1";
			} else {
				strWhere = strWhere+" and state=1";
			}
		}
		if (!CommonUtils.isNullOrEmpty(strWhere)) {
			strWhere = " where " + strWhere;
		}
		
		String strHql = "select count(*) from Message ";
		if(strWhere!=null)
			strHql += strWhere;
		return count(strHql);
	}

}
