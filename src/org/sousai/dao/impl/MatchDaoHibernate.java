package org.sousai.dao.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.sousai.dao.MatchDao;
import org.sousai.domain.Court;
import org.sousai.domain.Match;
import org.sousai.domain.MatchClass;
import org.sousai.domain.MatchType;
import org.sousai.domain.User;
import org.sousai.tools.MyPrint;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MatchDaoHibernate extends HibernateDaoSupport implements MatchDao {

	@Override
	public Match get(Integer id) {
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Match.class, id);
	}

	@Override
	public Long save(Match match) {
		// TODO Auto-generated method stub
		return (Long) getHibernateTemplate().save(match);
	}

	@Override
	public void update(Match match) {
		// TODO Auto-generated method stub
		getHibernateTemplate().update(match);
	}

	@Override
	public void delete(Match match) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(match);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<Match> findAll() {
		// TODO Auto-generated method stub
		List<Match> list = (List<Match>) getHibernateTemplate().find("from Match");
		return list;
	}

	@Override
	public List<Match> findByUser(User user) {
		// TODO Auto-generated method stub
		return (List<Match>) getHibernateTemplate().find(
				"from Matches where UserId=?", user.getId());
	}

	@Override
	public List<Match> findByUserId(Integer userId) {
		// TODO Auto-generated method stub
		return (List<Match>) getHibernateTemplate().find(
				"from Matches where UserId=?");

	}

	@Override
	public List<Match> findByMatchType(MatchType matchType) {
		// TODO Auto-generated method stub
		return (List<Match>) getHibernateTemplate().find(
				"from Matches where Type=?", matchType.getName());
	}

	@Override
	public List<Match> findByMatchTypeName(String matchTypeName) {
		// TODO Auto-generated method stub
		return (List<Match>) getHibernateTemplate().find(
				"from Matches where Type=?", matchTypeName);
	}

	@Override
	public List<Match> findByMatchClass(MatchClass matchClass) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Match> findByMatchClassId(Integer matchClassId) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Match> findByMarkingUserId(Integer userId) {
		return (List<Match>) getHibernateTemplate()
				.find("from Matches m, UserMark um where um.UserId=? and m.id=um.MatchId",
						userId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Match> findByParms(int[] dayOfWeek, int state, Date date,
			Integer regionId) {
		// return (List<Match>);
		String hql = "from Matches where ";

		boolean flag = false; // 标记是否有参数使用
		if (dayOfWeek != null && dayOfWeek.length != 0) {
			hql += "DAYOFWEEK(BeginTime) in "; // mysql数据库中，通过函数DAYOFWEEK(Field)可知道是周几（1-8），周日是1，周一是2，
			for (int dow : dayOfWeek) {
				if (dow < 9 && dow > 0)
					hql += (dow + " , ");
				else
					return null;
			}
			flag = true;
		}
		if (state != -1 && date != null) {
			if (flag)
				hql += "and ";
			if (state == 0) // 报名中，即比赛开始时间在date之后
				hql += "BEGINTIME=? ";
			else if (state == 1) // 比赛中，即date处于比赛开始时间与结束时间之间
				hql += "BEGINTIME<? and ENDTIME>? ";
			else if (state == 2) // 已结束，即date在比赛结束之后
				hql += "ENDTIME<? ";
			else
				return null; // 其他情况，报错返回null
			flag = (!flag ? true : false);
		}
		if (regionId != -1)
			if (flag)
				hql += "and regionId==?";
			else
				hql += "regionId==?";
		else if (!flag)
			return null; // 没有参数被使用，报错返回null
		MyPrint.myPrint(hql);
		if (state == -1 && regionId == -1) // 只有dayOfWeek被使用
			return (List<Match>) getHibernateTemplate().find(hql);
		else if (state == -1) // dayOfWeek和regionId被使用
			return (List<Match>) getHibernateTemplate().find(hql, regionId);
		else if (regionId == -1) // dayOfWeek和state及date被使用
			return (List<Match>) getHibernateTemplate().find(hql, date);
		else
			// 所有参数都使用
			return getHibernateTemplate().find(hql, date, regionId);
	}

	@Override
	public Map<String, Integer> getEachMatchCount(Integer userId) {
		String hql = "select type,count(*) from Match m where userId=? group by type";
		return null;
	}
}
