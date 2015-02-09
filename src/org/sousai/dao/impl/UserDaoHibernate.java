package org.sousai.dao.impl;

import org.sousai.domain.*;
import org.sousai.dao.*;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MatchBean;
import org.sousai.vo.UserBean;
import org.hibernate.Query;
import org.hibernate.Session;

import java.util.List;

public class UserDaoHibernate extends SqlHelper implements UserDao {
	private final String selectUserBean = "select new org.sousai.vo.UserBean(u.id,u.name,u.pwd,u.email,u.type,u.regTime,u.lastLogTime) "
			+ "from User u";

	public UserDaoHibernate() {
		super();
	}

	public User get(Integer id) {
		return getHibernateTemplate().get(User.class, id);
	}

	@Override
	public Long save(User user) {
		// System.out.println("save now turn to getHibernateTemplate().save "+user.getId()+"   "+
		// user.getName()+"   "+user.getPwd()+"   ");
		MyPrint.myPrint("" + user.getId() + "name" + user.getName() + "pwd"
				+ user.getPwd() + "Email" + user.getEmail() + "type"
				+ user.getType());
		try {
			return Long.parseLong(getHibernateTemplate().save(user).toString());
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		/*
		 * String test; try{ test =
		 * getHibernateTemplate().save(user).toString(); MyPrint.myPrint(test);
		 * } catch(Exception e) { e.printStackTrace(); } return (long) 000000;
		 */
	}

	@Override
	public void update(User user) {
		try {
			getHibernateTemplate().update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void delete(User user) {
		getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<UserBean> findAll() {
		String hql = selectUserBean;
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<UserBean>) session.createQuery(hql).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));

	}

	@Override
	public List<User> findByNameAndPass(User user) {
		return (List<User>) getHibernateTemplate().find(
				"from User u where u.name=? and u.pwd=?", user.getName(),
				user.getPwd());
	}

	@Override
	public User findByName(String name) {
		List<User> user = (List<User>) getHibernateTemplate().find(
				"from User u where u.name=?", name);
		if (user != null && user.size() > 0) {
			return user.get(0);
		}
		return null;
	}

	@Override
	public int countAllUser(Integer selType) {
		String strHql = "select count(*) from User";
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strHql)) {
				strHql = " where type='1'";
			} else {
				strHql += " where type='1'";
			}
		}
		return count(strHql);
	}

	@Override
	public List<UserBean> findPagedAll(int currentPage, int rows) {
		String strHql = "from User";
		return (List<UserBean>) findPagedModelList_HQL(strHql, currentPage,
				rows);
	}

	@Override
	public List<UserBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		String strWhere = null;
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				types[i] = 2;
				args[i] = keyValue;
				// 加上 别名 统一
				columns[i] = " and" + addPrefixToColumn(columns[i]);
			}
			strWhere = Append_String(" where ", types, columns, args);
		}
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " where u.type='1'";
			} else {
				strWhere += " and u.type='1'";
			}
		}
		return findPagedByWhereOrderBy(strWhere, currentPage, rows,
				addPrefixToColumn(orderByCol), isAsc);
	}

	private String addPrefixToColumn(String column) {
		String value;
		value = " u." + column;
		return value;
	}

	private List<UserBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectUserBean;
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
		return (List<UserBean>) findPagedModelList_HQL(q, currentPage, rows);
	}

	@Override
	public void deleteUsers(Integer[] ids) {
		String strHql = "update User set type=0 where id in (:ids)";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		Query q = session.createQuery(strHql);
		q.setParameterList("ids", ids);
		q.executeUpdate();
	}
}
