package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.CourtDao;
import org.sousai.domain.*;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

public class CourtDaoHibernate extends SqlHelper implements CourtDao {
	// private String selectCourtBean =
	// "select c.ID,c.NAME,c.COURTTYPEID,ct.NAME,c.MATCHTYPE,"
	// + "c.REGIONID,c.REGION,c.ADDR,c.TABLENUM,c.TEL,"
	// + "c.MATCHCOUNT,c.PRICE,c.WORKTIME,c.INTRO,c.VERIFY,"
	// + "c.RELDATE,c.MODDATE,c.USERID,u.NAME "
	// + "from COURT c, COURTTYPE ct, USER u "
	// + "where c.COURTTYPEID=ct.ID and c.USERID=u.ID ";
	private String selectCourtBean = "select new org.sousai.vo.CourtBean(c.id,c.name,"
			+ "c.courtTypeId,ct.name,c.matchType,"
			+ "c.regionId,c.region,c.addr,"
			+ "c.tableNum,c.tel,c.matchCount,"
			+ "c.price,c.workTime,c.intro,"
			+ "c.verify,c.relDate,c.modDate,"
			+ "c.userId,u.name) "
			+ "from Court c, CourtType ct, User u "
			+ "where c.courtTypeId=ct.id and c.userId=u.id ";

	public CourtDaoHibernate() {
		super();
	}

	@Override
	public CourtBean get(Integer id) {
		// return getHibernateTemplate().get(Court.class, id);
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			MyPrint.myPrint("getSession() SUCCESS");
			String hql = selectCourtBean;
			hql += " and c.id=?";
			MyPrint.myPrint(hql);
			Query q = session.createQuery(hql);
			q.setInteger(0, id);
			return extracted(q).get(0);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public Integer save(Court court) throws Exception {
		return (Integer) getHibernateTemplate().save(court);
	}

	@Override
	public void update(Court court) {
		getHibernateTemplate().update(court);
	}

	@Override
	public void delete(Court court) {
		getHibernateTemplate().delete(court);
	}

	@Override
	public void delete(Integer id) {
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<CourtBean> findAll(Integer currentPage, Integer rows)
			throws Exception {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectCourtBean;
		Query q = session.createQuery(hql);
		return extracted(q, currentPage, rows);
	}

	@Override
	public List<CourtBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectCourtBean;
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
		return extracted(q, currentPage, rows);
	}

	@Override
	public List<CourtBean> findByUser(User user) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and USERID=?");
		Query q = session.createQuery(hql.toString());
		q.setInteger(0, user.getId().intValue());
		return extracted(q);
	}

	@SuppressWarnings("unchecked")
	private List<CourtBean> extracted(Query q) {
		return (List<CourtBean>) q.list();
	}

	private List<CourtBean> extracted(Query q, Integer currentPage, Integer rows) {
		return (List<CourtBean>) findPagedModelList_HQL(q, currentPage, rows);
	}

	@Override
	public List<CourtBean> findByCourtType(CourtType courtType) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and COURTTYPEID=?");
		Query q = session.createQuery(hql.toString());
		q.setInteger(0, courtType.getId().intValue());
		return extracted(q);
	}

	@Override
	public List<CourtBean> findPagedByMatchType(String matchType,
			Integer currentPage, Integer rows) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and MATCHTYPE=?");
		Query q = session.createQuery(hql.toString());
		q.setString(0, matchType).setMaxResults(rows)
				.setFirstResult((currentPage - 1) * rows);
		return extracted(q);
	}

	@Override
	public List<CourtBean> findByPram(User user, CourtType courtType,
			String matchType, Region region) {
		String sql = "from Court where";
		int flag = 0;
		if (user != null) {
			sql += " userId=?";
			flag += 1;
		}
		if (courtType != null) {
			sql += " courtType=?";
			flag += 2;
		}
		if (matchType != null) {
			sql += " matchType=?";
			flag += 4;
		}
		if (region != null) {
			sql += " region=?";
			flag += 8;
		}
		if (flag == 1) {

		}
		return null;
	}

	@Override
	public List<CourtBean> findPagedByRegionId(Integer regionId,
			Integer currentPage, Integer rows) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and c.regionId=? and c.verify='1'");
		Query q = session.createQuery(hql.toString());
		q.setInteger(0, regionId).setFirstResult((currentPage - 1) * rows)
				.setMaxResults(rows);
		return extracted(q);
	}

	@Override
	public List<CourtBean> findPagedByUserId(Integer userId,
			Integer currentPage, Integer rows) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and c.userId=?");
		Query q = session.createQuery(hql.toString());
		q.setMaxResults(rows).setFirstResult((currentPage - 1) * rows);
		q.setInteger(0, userId);
		return extracted(q);
	}

	@Override
	public int countRelMatchPerDay(Integer userId) {
		int value = -1;
		try {
			String hql = "select count(*) from Court where date(relDate)=curdate() and userId=?";
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(hql);
			q.setInteger(0, userId);
			value = Integer.valueOf(q.uniqueResult().toString()).intValue();
		} catch (Exception e) {
			e.printStackTrace();
			return -1;
		}
		System.out.println("value = "+value);
		return value;
	}

	@Override
	public int deleteCourts(Integer[] courtIds) {
		int value = -1;
		String strHql = "delete from Court where id in(:ids)";
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			Query q = session.createQuery(strHql);
			q.setParameterList("ids", courtIds);
			value = q.executeUpdate();
		} catch (HibernateException e) {
			e.printStackTrace();
		}
		return value;
	}

	@Override
	public int countMatch() {
		String strHql = "select count(*) from Court";
		return count(strHql);
	}

	@Override
	public List<CourtBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
			int[] types = new int[columns.length];
			String[] args = new String[columns.length];
			for (int i = 0; i < columns.length; i++) {
				types[i] = 2;
				// args[i] = new String(keyValue.getBytes("UTF-8"));
				args[i] = keyValue;
				// 列前加上表别名
				columns[i] = " and " + addPrefixToColumn(columns[i]);
			}
			String strWhere = Append_String(" and ", types, columns, args);
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
		} else {
			value = " c." + column;
		}
		return value;
	}

	@Override
	public List<CourtBean> findPagedByParams(String keyValue, String matchType,
			Integer courtTypeId, String region, int currentPage, int rows,
			String orderByCol, Boolean isAsc) throws Exception {
		List<CourtBean> list = null;
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
		}
		if (!CommonUtils.isNullOrEmpty(region)) {
			region += region + "% ";
		}
		String strWhere = Append_StringWithout1(" ", new int[] { 2, 0, 1, 2 },
				new String[] { " and c.name", " and c.matchType",
						" and c.courtTypeId", " and c.region" }, new Object[] {
						keyValue, matchType, courtTypeId, region });
		list = findPagedByWhereOrderBy(strWhere + " and c.verify='1'",
				currentPage, rows, addPrefixToColumn(orderByCol), isAsc);
		return list;
	}

	@Override
	public Integer countByParams(String keyValue, String matchType,
			Integer courtTypeId, String region) throws Exception {
		if (!CommonUtils.isNullOrEmpty(keyValue)) {
			keyValue = " %" + keyValue + "% ";
		}
		if (!CommonUtils.isNullOrEmpty(region)) {
			region = " %" + region + "% ";
		}
		String strHql = Append_StringWithout1(
				"select count(*) from Court c where c.verify='1' ", new int[] {
						2, 0, 1, 2 }, new String[] { " and c.name",
						" and c.matchType", " and c.courtTypeId",
						" and c.region" }, new Object[] { keyValue, matchType,
						courtTypeId, region });
		return count(strHql);
	}

	@Override
	public List<CourtBean> findPagedByRegion(String region, int currentPage,
			int rows) throws Exception {
		if (!CommonUtils.isNullOrEmpty(region)) {
			region += "% ";
		}
		String strWhere = Append_String(" and c.verify='1' and ",
				new int[] { 2 }, new String[] { " and c.region " },
				new String[] { region });
		return findPagedByWhereOrderBy(strWhere, currentPage, rows, null, null);
	}

	@Override
	public Integer countByRegion(String region) throws Exception {
		if (!CommonUtils.isNullOrEmpty(region)) {
			region += "% ";
		}
		String strHql = Append_String(
				"select count(*) from Court c where c.verify='1' and ",
				new int[] { 2 }, new String[] { " and c.region " },
				new String[] { region });
		return count(strHql);
	}

	@Override
	public void relCourts(Integer[] ids) throws Exception {
		String strHql = "update Court set verify='1' where id in (:ids)";
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		Query q = session.createQuery(strHql);
		q.setParameterList("ids", ids);
		q.executeUpdate();
	}

	@Override
	public int countByUserId(Integer userId) {
		String strHql = "select count(*) from Court where userId=" + userId;
		return count(strHql);
	}

}
