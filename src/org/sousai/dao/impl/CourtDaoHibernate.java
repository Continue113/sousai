package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.CourtDao;
import org.sousai.domain.*;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CourtDaoHibernate extends SqlHelper implements CourtDao {
//	private String selectCourtBean = "select c.ID,c.NAME,c.COURTTYPEID,ct.NAME,c.MATCHTYPE,"
//			+ "c.REGIONID,c.REGION,c.ADDR,c.TABLENUM,c.TEL,"
//			+ "c.MATCHCOUNT,c.PRICE,c.WORKTIME,c.INTRO,c.VERIFY,"
//			+ "c.RELDATE,c.MODDATE,c.USERID,u.NAME "
//			+ "from COURT c, COURTTYPE ct, USER u "
//			+ "where c.COURTTYPEID=ct.ID and c.USERID=u.ID ";
	private String selectCourtBean = "select new org.sousai.vo.CourtBean(c.id,c.name,"
			+ "c.courtTypeId,ct.name,c.matchType,"
			+ "c.regionId,c.region,c.addr,"
			+ "c.tableNum,c.tel,c.matchCount,"
			+ "c.price,c.workTime,c.intro,"
			+ "c.verify,c.relDate,c.modDate,"
			+ "c.userId,u.name) "
			+ "from Court c, CourtType ct, User u "
			+ "where c.courtTypeId=ct.id and c.userId=u.id ";
	private SqlHelper sqlHelper;
	
	public CourtDaoHibernate() {
		super();
		sqlHelper = new SqlHelper();
	}

	/**
	 * @return the sqlHelper
	 */
	public SqlHelper getSqlHelper() {
		return sqlHelper;
	}

	/**
	 * @param sqlHelper the sqlHelper to set
	 */
	public void setSqlHelper(SqlHelper sqlHelper) {
		this.sqlHelper = sqlHelper;
	}

	@Override
	public CourtBean get(Integer id) {
		// return getHibernateTemplate().get(Court.class, id);
		try {
			Session session = getHibernateTemplate().getSessionFactory()
					.getCurrentSession();
			MyPrint.myPrint("getSession() SUCCeSS");
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
	public Integer save(Court court) {
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
	public List<CourtBean> findAll(Integer currentPage, Integer rows) throws Exception{
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		String hql = selectCourtBean;
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
		return (List<CourtBean>)q.list();
	}
	private List<CourtBean> extracted(Query q, Integer currentPage, Integer rows) {
		return (List<CourtBean>)sqlHelper.findPagedModelList_HQL(q, currentPage, rows);
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
	public List<CourtBean> findByMatchType(String matchType) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and MATCHTYPE=?");
		Query q = session.createQuery(hql.toString());
		q.setString(0, matchType);
		return extracted(q);
	}

	@Override
	public List<CourtBean> findByPram(User user, CourtType courtType, String matchType,
			Region region) {
		// TODO Auto-generated method stub
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
	public List<CourtBean> findByRegionId(Integer regionId) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and regionId=?");
		Query q = session.createQuery(hql.toString());
		q.setInteger(0, regionId);
		return extracted(q);
	}

	@Override
	public List<CourtBean> findByUserId(Integer userId) {
		Session session = getHibernateTemplate().getSessionFactory()
				.getCurrentSession();
		StringBuffer hql = new StringBuffer(selectCourtBean);
		hql.append("and userId=?");
		Query q = session.createQuery(hql.toString());
		q.setInteger(0, userId);
		return extracted(q);
	}

	@Override
	public int countRelMatchPerDay(Integer userId) {
		int value = -1;
		try{
			String hql = "select count(*) from Court where date(relDate)=curdate() and userId=?";
			Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
			Query q = session.createQuery(hql);
			q.setInteger(0, userId);
			value = Integer.valueOf(q.uniqueResult().toString()).intValue();
		}catch (Exception e){
			e.printStackTrace();
			return -1;
		}
		return value;
	}

	@Override
	public int deleteCourts(Integer[] courtIds) {
		int value = -1;
		String strHql = "delete from Court where id in(:ids)";
		try{
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
		Query q = session.createQuery(strHql);
		q.setParameterList("ids", courtIds);
		value = q.executeUpdate();
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return value;
	}

	@Override
	public int countMatch() {
		String strHql = "select count(*) from Court";
		return count(strHql);
	}
}
