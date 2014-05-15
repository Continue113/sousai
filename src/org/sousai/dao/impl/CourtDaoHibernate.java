package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.CourtDao;
import org.sousai.domain.*;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class CourtDaoHibernate extends HibernateDaoSupport implements CourtDao
{
	@Override
	public Court get(Long id) 
	{
		// TODO Auto-generated method stub
		return getHibernateTemplate().get(Court.class, id);
	}

	@Override
	public Long save(Court court) 
	{
		// TODO Auto-generated method stub
		return (Long)getHibernateTemplate().save(court);
	}

	@Override
	public void update(Court court)
	{
		// TODO Auto-generated method stub
		getHibernateTemplate().update(court);
	}

	@Override
	public void delete(Court court) 
	{
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(court);
	}

	@Override
	public void delete(Long id)
	{
		// TODO Auto-generated method stub
		getHibernateTemplate().delete(get(id));
		
	}

	@Override
	public List<Court> findAll()
	{
		// TODO Auto-generated method stub
		return (List<Court>)getHibernateTemplate().find("from Court");
	}

	@Override
	public List<Court> findByUser(User user)
	{
		// TODO Auto-generated method stub
		return (List<Court>)getHibernateTemplate().find("from Court where UserId=?",user.getId());
	}

	@Override
	public List<Court> findByCourtType(CourtType courtType)
	{
		// TODO Auto-generated method stub
		return (List<Court>)getHibernateTemplate().find("from Court where courtType=?",courtType.getId());
	}

	@Override
	public List<Court> findByMatchType(String matchType)
	{
		// TODO Auto-generated method stub
		return (List<Court>)getHibernateTemplate().find("from Court where matchType=?", matchType);
	}

	


	@Override
	public List<Court> findByPram(User user, CourtType courtType,
			String matchType, Region region) {
		// TODO Auto-generated method stub
		String sql = "from court where";
		int flag = 0;
		if(user != null)
		{
			sql += " userId=?";
			flag += 1;
		}
		if(courtType != null)
		{
			sql += " courtType=?";
			flag += 2;
		}
		if(matchType != null)
		{
			sql += " matchType=?";
			flag += 4;
		}
		if(region != null)
		{
			sql += " region=?";
			flag += 8;
		}
		if(flag == 1)
		{
			
		}
		return null;
	}

}
