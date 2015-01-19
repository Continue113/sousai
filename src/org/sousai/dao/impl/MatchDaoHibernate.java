package org.sousai.dao.impl;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.sousai.dao.MatchDao;
import org.sousai.domain.Match;
import org.sousai.domain.User;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;

public class MatchDaoHibernate extends SqlHelper implements MatchDao {

	private final String selectMatchBean = "select new org.sousai.vo.MatchBean(m.id,m.name,m.type,"
			+ "m.beginTime,m.endTime,m.courtId,c.name,m.rule,m.relTime,"
			+ "m.verify,m.score,m.userId,u.name,c.region) from Match m, Court c, User u "
			+ "where m.courtId=c.id and u.id=m.userId ";

	public MatchDaoHibernate() {
		super();
	}

	@Override
	public Match get(Integer id) {
		return getHibernateTemplate().get(Match.class, id);
	}

	@Override
	public MatchBean getMatchBean(Integer id) {
		MatchBean value = null;
		String strHql = String
				.format("%1$s and m.id=%2$s", selectMatchBean, id);
		List<MatchBean> list = (List<MatchBean>) findModelList_HQL(strHql);
		if (!CommonUtils.isNullOrEmpty(list)) {
			value = list.get(0);
		}
		return value;
	}

	@Override
	public Integer save(Match match) {
		return (Integer) getHibernateTemplate().save(match);
	}

	@Override
	public void update(Match match) {
		getHibernateTemplate().update(match);
	}

	@Override
	public void delete(Match match) {
		getHibernateTemplate().delete(match);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MatchBean> findAll(int currentPage, int rows) {
		String hql = selectMatchBean;
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<MatchBean>) session.createQuery(hql)
					.setMaxResults(rows)
					.setFirstResult((currentPage - 1) * rows).list();
		} catch (Exception e) {
			e.printStackTrace();
			if (e.getCause() != null)
				e.getCause().printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MatchBean> findByUser(User user, int currentPage, int rows) {
		String hql = selectMatchBean + "and m.userId=?";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<MatchBean>) session.createQuery(hql)
					.setInteger(0, user.getId()).setMaxResults(rows)
					.setFirstResult((currentPage - 1) * rows).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<MatchBean> findByUserId(Integer userId, int currentPage,
			int rows) {
		String hql = selectMatchBean + "and m.userId=?";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		try {
			return (List<MatchBean>) session.createQuery(hql)
					.setInteger(0, userId).setMaxResults(rows)
					.setFirstResult((currentPage - 1) * rows).list();
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public List<MatchBean> findByMatchTypeId(Integer matchTypeId,
			int currentPage, int rows) {
		return null;
		// String hql = selectMatchBean + "and m.type=?";
		// Session session =
		// getHibernateTemplate().getSessionFactory().getCurrentSession();
		// try{
		// return (List<MatchBean>)session.createQuery(hql).setInteger(0,
		// matchTypeId).list();
		// }catch(Exception e){
		// e.printStackTrace();
		// return null;
		// }
	}

	@Override
	public List<MatchBean> findByMatchTypeName(String matchTypeName,
			int currentPage, int rows) {
		return null;
		// return (List<Match>) getHibernateTemplate().find(
		// "from Match where Type=?", matchTypeName);
	}

	@Override
	public List<MatchBean> findByMatchClassId(Integer matchClassId,
			int currentPage, int rows) {
		return null;
	}

	@Override
	public List<MatchBean> findByMatchClassName(String matchClassName,
			int currentPage, int rows) {
		return null;
	}

	@Override
	public List<MatchBean> findByParms(int[] dayOfWeek, int state, Date date,
			Integer regionId, int currentPage, int rows) {
		return null;
		// return (List<Match>);
		// String hql = "from Match where ";
		//
		// boolean flag = false; // 标记是否有参数使用
		// if (dayOfWeek != null && dayOfWeek.length != 0) {
		// hql += "DAYOFWEEK(BeginTime) in "; //
		// mysql数据库中，通过函数DAYOFWEEK(Field)可知道是周几（1-8），周日是1，周一是2，
		// for (int dow : dayOfWeek) {
		// if (dow < 9 && dow > 0)
		// hql += (dow + " , ");
		// else
		// return null;
		// }
		// flag = true;
		// }
		// if (state != -1 && date != null) {
		// if (flag)
		// hql += "and ";
		// if (state == 0) // 报名中，即比赛开始时间在date之后
		// hql += "BEGINTIME=? ";
		// else if (state == 1) // 比赛中，即date处于比赛开始时间与结束时间之间
		// hql += "BEGINTIME<? and ENDTIME>? ";
		// else if (state == 2) // 已结束，即date在比赛结束之后
		// hql += "ENDTIME<? ";
		// else
		// return null; // 其他情况，报错返回null
		// flag = (!flag ? true : false);
		// }
		// if (regionId != -1)
		// if (flag)
		// hql += "and regionId==?";
		// else
		// hql += "regionId==?";
		// else if (!flag)
		// return null; // 没有参数被使用，报错返回null
		// MyPrint.myPrint(hql);
		// if (state == -1 && regionId == -1) // 只有dayOfWeek被使用
		// return (List<MatchBean>) getHibernateTemplate().find(hql);
		// else if (state == -1) // dayOfWeek和regionId被使用
		// return (List<MatchBean>) getHibernateTemplate().find(hql, regionId);
		// else if (regionId == -1) // dayOfWeek和state及date被使用
		// return (List<MatchBean>) getHibernateTemplate().find(hql, date);
		// else
		// // 所有参数都使用
		// return getHibernateTemplate().find(hql, date, regionId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Integer> getEachMatchCount(Integer userId) {
		try {
			Map<String, Integer> rs = new HashMap<String, Integer>();
			String hql = "select type,count(type) from Match m where userId=? group by type";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(hql);
			q.setInteger(0, userId);
			MyPrint.myPrint("userId = " + userId);
			for (Object[] ob : (List<Object[]>) q.list()) {
				rs.put((String) ob[0], Integer.valueOf(ob[1].toString()));
			}
			return rs;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int countRelMatchPerDay(Integer userId) {
		int value = -1;
		try {
			String hql = "select count(*) from Match where date(relTime)=curdate() and userId=?";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(hql);
			q.setInteger(0, userId);
			value = Integer.valueOf(q.uniqueResult().toString()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		return value;
	}

	@Override
	public int deleteMatches(Integer[] matchIds) {
		int value = -1;
		System.out.println(matchIds);
		String strHql = "delete from Match where id in (:ids)";
		// String strHql = "delete from Match where id in ("+matchIds+")";
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			q.setParameterList("ids", matchIds);
			// System.out.println(q.getQueryString());
			value = q.executeUpdate();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return value;

	}

	private List<MatchBean> getModelList_HQL(String strHql) {
		return (List<MatchBean>) findModelList_HQL(strHql);
	}

	private List<MatchBean> getPagedModelList_HQL(String strHql,
			int currentPage, int pageSize) {
		return (List<MatchBean>) findPagedModelList_HQL(strHql, currentPage,
				pageSize);
	}

	private List<MatchBean> getModelList_SQL(String strSql) {
		return (List<MatchBean>) findModelList_SQL(strSql, getClass());
	}

	private List<MatchBean> getPagedModelList_SQL(String strSql,
			int currentPage, int pageSize) {
		return (List<MatchBean>) findPagedModelList_SQL(strSql, currentPage,
				pageSize, getClass());
	}

	@Override
	public List<MatchBean> findByKeyValue(String keyValue) {
		keyValue = " '%" + keyValue + "%' ";
		String strHql = String.format(
				"from Match where name like %1$s or rule like %1$s", keyValue);
		return getModelList_HQL(strHql);
	}

	@Override
	public List<MatchBean> findPagedByKeyValue(String keyValue,
			int currentPage, int pageSize) {
		keyValue = " '%" + keyValue + "%' ";
		String strHql = String.format(
				"from Match where name like %1$s or rule like %1$s", keyValue);
		return getPagedModelList_HQL(strHql, currentPage, pageSize);
	}

	@Override
	public int countMatch() {
		String strHql = "select count(*) from Match";
		return count(strHql);
	}

	@Override
	public List<MatchBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {

		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			String[] keyValues = keyValue.split(" ");
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				MyPrint.myPrint("keyValues.length = " + keyValues.length);
				int[] tempTypes = new int[keyValues.length];
				String[] tempArgs = new String[keyValues.length];
				String[] tempColumns = new String[keyValues.length];
				for (int j = 0; j < keyValues.length; j++) {
					String tempKeyValue = keyValues[j];
					tempTypes[j] = 2;
					if (!CommonUtils.isNullOrEmpty(tempKeyValue)) {
						tempKeyValue = " %" + tempKeyValue + "% ";
					}
					tempArgs[j] = tempKeyValue;
					// 加上 别名
					// columns[i] = " and " + addPrefixToColumn(columns[i]);
					if (j != 0) {
						tempColumns[j] = " or " + addPrefixToColumn(columns[i]);
					} else {
						tempColumns[j] = addPrefixToColumn(columns[i]);
					}
				}
				columns[i] = Append_StringWithout1(" ", tempTypes, tempColumns,
						tempArgs);
				types[i] = 11;
				args[i] = null;
			}
			String strWhere = Append_StringWithout1(" and ", types, columns,
					args);
			MyPrint.myPrint(strWhere);
			return findPagedByWhereOrderBy(strWhere, currentPage, rows,
					addPrefixToColumn(orderByCol), isAsc);
		} else {
			return findPagedByWhereOrderBy(null, currentPage, rows,
					addPrefixToColumn(orderByCol), isAsc);
		}
	}

	private String addPrefixToColumn(String column) {
		String value;
		if (column.equals("userName")) {
			value = " u.name";
		} else if (column.equals("courtName")) {
			value = " c.name";
		} else {
			value = " m." + column;
		}
		return value;
	}

	private List<MatchBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectMatchBean;
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
		return (List<MatchBean>) findPagedModelList_HQL(q, currentPage, rows);
	}

	@Override
	public List<MatchBean> findPagedByParams(String keyValue, String matchType,
			Date beforeBegin, Date between1, Date between2, Date afterEnd,
			Date beginTime, Date endTime, String region, int currentPage,
			int rows, String orderByCol, Boolean isAsc) throws Exception {
		List<MatchBean> list = null;
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
		}
		if (!CommonUtils.isNullOrEmpty(region)) {
			region = " %" + region + "% ";
		}

		// 比赛状态那里应该为or关系，另外看看是否需要加括号
		String strWhere = Append_String(
				" ",
				new int[] { 2, 0, 7, 3, 5, 7, 5, 2 },
				new String[] { " and m.name ", " and m.type ",
						" and m.beginTime ", " and m.beginTime ",
						" and c.region ", " and m.beginTime ",
						" and m.beginTime ", " and m.endTime ",
						" and m.endTime " },
				new Object[] { keyValue, matchType,
						CommonUtils.ToTimestamp(beginTime),
						CommonUtils.ToTimestamp(endTime), region,
						CommonUtils.ToTimestamp(beforeBegin),
						CommonUtils.ToTimestamp(between1),
						CommonUtils.ToTimestamp(between2),
						CommonUtils.ToTimestamp(afterEnd) });
		return findPagedByWhereOrderBy(strWhere, currentPage, rows, orderByCol,
				isAsc);
	}
}
