package org.sousai.dao.impl;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
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
	public MatchBean getMatchBean(Integer id) throws Exception {
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
	public List<MatchBean> findByUserId(Integer userId, String matchType,
			int currentPage, int rows) {
		String hql = selectMatchBean + "and m.userId=?";
		if (!CommonUtils.isNullOrEmpty(matchType)) {
			hql = String.format("%1$s and m.type='%2$s'", hql, matchType);
		}
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

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, Integer> getEachMatchCount(Integer userId) {
		try {
			Map<String, Integer> rs = new LinkedHashMap<String, Integer>();
			String hql = null;
			Session session = null;
			Query q = null;
			if (!CommonUtils.isNullOrEmpty(userId)) {
				hql = "select type,count(type) ct from Matches m where userId=? group by type order by ct desc";
				session = getHibernateTemplate().getSessionFactory()
						.getCurrentSession();
				// q = session.createQuery(hql);
				q = session.createSQLQuery(hql);
				q.setInteger(0, userId);
			} else {
				// 首页，只显示已通过审核的比赛数量
				hql = "select type,count(type) ct from Matches m  where m.verify='1' group by type order by ct desc";
				session = getHibernateTemplate().getSessionFactory()
						.getCurrentSession();
				// q = session.createQuery(hql);
				q = session.createSQLQuery(hql);
			}
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
	public int countMatchByAdmin(String[] columns,
			String keyValue, Integer selType) throws Exception {
		String strWhere = buildKeyValueStatement(keyValue, columns);
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " where m.verify='0'";
			} else {
				// strWhere += " and m.verify='0'";
				strWhere = String
						.format(" where %1$s and m.verify='0'", strWhere);
			}
		} else {
			if (!CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " where " + strWhere;
			}
		}
		String strHql = "select count(*) from Match m ";
		if(strWhere!=null)
			strHql += strWhere;
		return count(strHql);
	}
	
	@Override
	public int countMatch(Integer selType) {
		String strHql = "select count(*) from Match";
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strHql)) {
				strHql = " where verify='0'";
			} else {
				strHql += " where verify='0'";
			}
		}
		return count(strHql);
	}

	@Override
	public List<MatchBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		String strWhere = buildKeyValueStatement(keyValue, columns);
		if (!CommonUtils.isNullOrEmpty(selType) && selType == 1) {
			if (CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " and m.verify='0'";
			} else {
				// strWhere += " and m.verify='0'";
				strWhere = String
						.format(" and %1$s and m.verify='0'", strWhere);
			}
		} else {
			if (!CommonUtils.isNullOrEmpty(strWhere)) {
				strWhere = " and " + strWhere;
			}
		}
		return findPagedByWhereOrderBy(strWhere, currentPage, rows,
				addPrefixToColumn(orderByCol), isAsc);
	}

	private String addPrefixToColumn(String column) {
		String value;
		if (column.equals("userName")) {
			value = " u.name";
			// } else if (column.equals("courtName") || column.equals("region")
			// || column.equals("addr")) {
			// value = " c." + column;
			// } else {
		} else if (column.equals("courtName")) {
			value = "c.name";
		} else if (column.equals("region") || column.equals("addr")) {
			value = " c." + column;
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

	// private List<MatchBean> findPagedByWhereOrderBy_SQL(String strWhere,
	// Integer currentPage, Integer rows, String orderByCol, Boolean isAsc)
	// throws Exception {
	// Session session = getHibernateTemplate().getSessionFactory()
	// .getCurrentSession();
	// String hql = selectMatchBean;
	// if (!CommonUtils.isNullOrEmpty(strWhere)) {
	// hql += strWhere;
	// }
	// if (!CommonUtils.isNullOrEmpty(orderByCol)) {
	// hql = String.format("%1$s order by %2$s ", hql, orderByCol);
	// if (!CommonUtils.isNullOrEmpty(isAsc) && isAsc == false) {
	// hql += " DESC ";
	// }
	// }
	// Query q = session.createQuery(hql);
	// return (List<MatchBean>) findPagedModelList_SQL(q, currentPage, rows,
	// MatchBean.class);
	// }

	@Override
	public List<MatchBean> findPagedByParams(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region, int currentPage, int rows,
			String orderByCol, Boolean isAsc) throws Exception {
		String strWhere = buildFindByParamsWhere(keyValue, matchType, now,
				matchState, dayOfWeek, beginTime, endTime, region);
		MyPrint.myPrint("findPagedByParams.strWhere = " + strWhere);
		return findPagedByWhereOrderBy(" and m.verify='1' " + strWhere,
				currentPage, rows, addPrefixToColumn(orderByCol), isAsc);
	}

	private String buildFindByParamsWhere(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region) throws Exception {
		if (!CommonUtils.isNullOrEmpty(region)) {
			region += "% ";
		}
		Timestamp[] timePare = null;
		// 如果时间其中一个为空，timePare为空
		if (!CommonUtils.isNullOrEmpty(beginTime)
				&& !CommonUtils.isNullOrEmpty(endTime)) {
			timePare = new Timestamp[] { CommonUtils.ToTimestamp(beginTime),
					CommonUtils.ToTimestamp(endTime) };
		}

		// 构建筛选比赛状态的子语句
		String strMatchStateStatement = buildMatchStateStatement(matchState,
				now);
		// 构建筛选周几的子语句
		String strDayOfWeekStatement = buildDayOfWeekStatement(dayOfWeek);
		
		System.out.println("dayOfWeek="+dayOfWeek);
		System.out.println("strDayOfWeekStatement="+strDayOfWeekStatement);
		
		// 构建查询关键字的子语句，在name，type，region，addr字段查询
//		String strKeyValueStatement = buildKeyValueStatement(keyValue,
//				new String[] { addPrefixToColumn("name"),
//						addPrefixToColumn("type"), addPrefixToColumn("region"),
//						addPrefixToColumn("addr") });
		
		//buildKeyValueStatement方法中会调用addPrefixToColumn方法
		String strKeyValueStatement = buildKeyValueStatement(keyValue,
				new String[] { "name","type","region","addr"});

		int[] types = new int[] { 11, 11, 0, 3, 2, 11 };
		String[] columns = new String[] { strKeyValueStatement,
				strDayOfWeekStatement, addPrefixToColumn("type"),
				addPrefixToColumn("beginTime"), addPrefixToColumn("region"),
				strMatchStateStatement };
		Object[] args = new Object[] { null, null, matchType, timePare, region,
				null };
		int[] relations = new int[] { 1, 1, 1, 1, 1, 1 };

		// 由于这段sql是拼接在selectMatchBean或者是其他语句之后，前边已经有别的条件语句，因此这里需要加and，将flag置为true
		String strWhere = Append_StringV2(" ", types, columns, args, relations,
				true);

		return strWhere;
	}

	// 构建筛选比赛状态的子语句
	private String buildMatchStateStatement(int matchState, java.sql.Date now)
			throws Exception {
		String strMatchStateStatement = null;
		int[] types = null;
		int[] relations = null;
		String[] columns = null;
		java.sql.Date[] args = null;

		switch (matchState) {
		// 都没选
		case 0:
			strMatchStateStatement = "1<>1";
			break;
		// 都选
		case 7:
			break;
		// 报名中
		case 1:
			types = new int[] { 7 };
			columns = new String[] { addPrefixToColumn("beginTime") };
			args = new java.sql.Date[] { now };
			relations = new int[] { 1 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		// 比赛中
		case 2:

			types = new int[] { 7, 5 };
			columns = new String[] { addPrefixToColumn("beginTime"),
					addPrefixToColumn("endTime") };
			args = new java.sql.Date[] { now, now };
			relations = new int[] { 1, 1 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		// 报名中与比赛中
		case 3:
			types = new int[] { 7 };
			columns = new String[] { addPrefixToColumn("endTime") };
			args = new java.sql.Date[] { now };
			relations = new int[] { 1 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		// 已结束
		case 4:
			types = new int[] { 5 };
			columns = new String[] { addPrefixToColumn("endTime") };
			args = new java.sql.Date[] { now };
			relations = new int[] { 1 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		// 报名中与已结束
		case 5:
			types = new int[] { 5, 7 };
			columns = new String[] { addPrefixToColumn("beginTime"),
					addPrefixToColumn("endTime") };
			args = new java.sql.Date[] { now, now };
			relations = new int[] { 1, 2 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		// 比赛中与已结束
		case 6:
			types = new int[] { 5 };
			columns = new String[] { addPrefixToColumn("beginTime") };
			args = new java.sql.Date[] { now };
			relations = new int[] { 1 };
			strMatchStateStatement = Append_StringV2("", types, columns, args,
					relations, false);
			break;
		default:
			break;
		}
		return strMatchStateStatement;
	}

	// 构建筛选比赛时间是周几的子语句
	private String buildDayOfWeekStatement(int dayOfWeek) throws Exception {
		String strDayOfWeekStatement = null;
		String strDayOfWeek = "dayOfWeek(" + addPrefixToColumn("beginTime")
				+ ")";
		switch (dayOfWeek) {
		// 周1到周日
		case 0:
		case 7:
			break;
		// 工作日(即不为周六周日)
		case 1:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 10, 10 },
					new String[] { strDayOfWeek, strDayOfWeek }, new Integer[] {
							1, 7 }, new int[] { 1, 1 }, false);
			break;

		// 周六
		case 2:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 1 },
					new String[] { strDayOfWeek }, new Integer[] { 7 },
					new int[] { 1 }, false);
			break;

		// 工作日+周六(即不为周日)
		case 3:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 10 },
					new String[] { strDayOfWeek }, new Integer[] { 1 },
					new int[] { 1 }, false);
			break;

		// 周日
		case 4:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 1 },
					new String[] { strDayOfWeek }, new Integer[] { 1 },
					new int[] { 1 }, false);
			break;

		// 工作日+周日(即不为周六)
		case 5:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 10 },
					new String[] { strDayOfWeek }, new Integer[] { 7 },
					new int[] { 1 }, false);
			break;

		// 周六周日
		case 6:
			strDayOfWeekStatement = Append_StringV2("", new int[] { 1, 1 },
					new String[] { strDayOfWeek, strDayOfWeek }, new Integer[] {
							7, 1 }, new int[] { 1, 2 }, false);
			break;
		default:
			break;
		}
		return strDayOfWeekStatement;
	}

	private String buildKeyValueStatement(String keyValue, String[] columns)
			throws Exception {
		String strWhere = null;
		String[] columnsCopy = new String[columns.length];
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			String[] keyValues = keyValue.split(" ");
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			int[] relations = new int[columns.length];
			for (int i = 0; i < columns.length; i++) {
				MyPrint.myPrint("keyValues.length = " + keyValues.length);
				int[] tempTypes = new int[keyValues.length];
				int[] tempRelations = new int[keyValues.length];
				String[] tempArgs = new String[keyValues.length];
				String[] tempColumns = new String[keyValues.length];
				for (int j = 0; j < keyValues.length; j++) {
					String tempKeyValue = keyValues[j];
					tempTypes[j] = 2;
					if (!CommonUtils.isNullOrEmpty(tempKeyValue)) {
						tempKeyValue = " %" + tempKeyValue + "% ";
					}
					tempArgs[j] = tempKeyValue;
					// tempColumns[j] = columns[i];
					tempColumns[j] = addPrefixToColumn(columns[i]);
					tempRelations[j] = 2;
					// if (j != 0) {
					// tempRelations[j] = 2;
					// } else {
					// tempRelations[j] = 0;
					// }
				}
				columnsCopy[i] = Append_StringV2(" ", tempTypes, tempColumns,
						tempArgs, tempRelations, false);
				types[i] = 11;
				args[i] = null;
				relations[i] = 2;
				// if (i != 0) {
				// relations[i] = 2;
				// } else {
				// relations[i] = 0;
				// }
			}
			strWhere = Append_StringV2(" ", types, columnsCopy, args, relations,
					false);
			MyPrint.myPrint("buildKeyValueStatement.strWhere = " + strWhere);
		}
		return strWhere;
	}

	@Override
	public void relMatchesByAdmin(Integer[] ids, boolean isRel) {
		String strHql;
		if (isRel) {
			strHql = "update Match set verify='1' where id in (:ids)";
		} else {
			strHql = "update Match set verify='0' where id in (:ids)";
		}
		Map<String, Integer[]> params = new HashMap<String, Integer[]>();
		params.put("ids", ids);
		executeHql(strHql, params);
	}

	@Override
	public int countByUserId(Integer userId) {
		String strHql = "select count(*) from Match where userId=" + userId;
		return count(strHql);
	}

	@Override
	public int countByParams(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region) throws Exception {
		String strWhere = buildFindByParamsWhere(keyValue, matchType, now,
				matchState, dayOfWeek, beginTime, endTime, region);
		// return findPagedByWhereOrderBy(strWhere, currentPage, rows,
		// orderByCol,
		// isAsc);
		String strHql = "select count(*) from Match m, Court c, User u "
				+ "where m.courtId=c.id and u.id=m.userId and m.verify='1'";
		if (!CommonUtils.isNullOrEmpty(strWhere)) {
			strHql += strWhere;
		}
		return count(strHql);
	}

	@Override
	public List<MatchBean> findPagedByCourtId(Integer courtId, int currentPage,
			int rows) throws Exception {
		String strWhere = Append_StringV2(" and m.verify='1' ",
				new int[] { 1 }, new String[] { addPrefixToColumn("courtId") },
				new Integer[] { courtId }, new int[] { 1 }, true);
		return findPagedByWhereOrderBy(strWhere, currentPage, rows, null, null);
	}

	@Override
	public int countByCourtId(Integer courtId) throws Exception {
		String strWhere = Append_StringV2(" m.verify='1' ", new int[] { 1 },
				new String[] { addPrefixToColumn("courtId") },
				new Integer[] { courtId }, new int[] { 1 }, true);

		return count("select count(*) from Match m where " + strWhere);
	}

	@Override
	public List<String> findMatchType() throws Exception {
		return (List<String>) findModelList_SQL(
				"select DISTINCT M.TYPE  from MATCHES M where TYPE not in(select name from MATCHTYPE);",
				String.class);
	}

	@Override
	public Map<Integer, Integer> countByCourtIds(Integer[] ids)
			throws Exception {
		Map<Integer, Integer> rs = null;
		try {
			rs = new HashMap<Integer, Integer>();
			String hql = "select courtId,count(*) from Match m where courtId in (:ids) group by courtId";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(hql);
			q.setParameterList("ids", ids);
			for (Object[] ob : (List<Object[]>) q.list()) {
				rs.put((Integer) ob[0], Integer.valueOf(ob[1].toString()));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rs;
	}
}
