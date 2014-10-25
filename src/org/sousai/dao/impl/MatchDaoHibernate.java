package org.sousai.dao.impl;

import java.util.Date;
import java.util.List;

import org.sousai.dao.MatchDao;
import org.sousai.domain.Court;
import org.sousai.domain.Match;
import org.sousai.domain.MatchClass;
import org.sousai.domain.MatchType;
import org.sousai.domain.User;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class MatchDaoHibernate extends HibernateDaoSupport implements MatchDao {

	@Override
	public Match get(Long id) {
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
	public void delete(Long id) {
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public List<Match> findAll() {
		// TODO Auto-generated method stub
		return (List<Match>) getHibernateTemplate().find("from Match");
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
	public List<Match> findByMatchTypeId(String matchTypeName) {
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

	@Override
	public List<Match> findByParms(int[] dayOfWeek, int state, Date date, Integer regionId) {
		// return (List<Match>);
		String hql = "from Matches where ";
		if (dayOfWeek != null && dayOfWeek.length != 0) {
			hql += "DAYOFWEEK(BeginTime) in ";
			for (int dow : dayOfWeek) {
				hql += (dow + " , ");
			}
			hql += " and ";
		}
		if(date != null){
			hql += "BeginTime=";
		}
		hql += " ";
		return (List<Match>) getHibernateTemplate().find("from Matches where ");
	}
}
