package org.sousai.dao.impl;

import java.util.List;

import org.sousai.dao.RegionDao;
import org.sousai.domain.Region;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

public class RegionDaoHibernate extends HibernateDaoSupport implements RegionDao
{

	@Override
	public Region get(Integer id)
	{
		return getHibernateTemplate().get(Region.class, id);
	}
	
	@Override
	public Integer save(Region region)
	{
		return (Integer)getHibernateTemplate().save(region);
	}
	
	@Override
	public void update(Region region)
	{
		getHibernateTemplate().update(region);
	}
	
	@Override
	public void delete(Region region)
	{
		getHibernateTemplate().delete(region);
	}
	
	@Override
	public void delete(Integer id)
	{
		getHibernateTemplate().delete(get(id));
	}

	@Override
	public Region getByName(String name, int order) {
		// TODO Auto-generated method stub
		List<Region> regions = (List<Region>)getHibernateTemplate().find("from Region where name=?", name);
		if(regions != null && regions.size()!=0)
		{
			if(order < 0)
			{
				return null;
			}
			return regions.get(order);
		}
		return null;
	}

	@Override
	public List<Region> getSon(Integer id) {
		// TODO Auto-generated method stub
		return (List<Region>)getHibernateTemplate().find("from Region r where r.parentId=?", id);
	}

	@Override
	public List<Region> getSonByName(String name, int order) {
		// TODO Auto-generated method stub
		Region TempRegion = getByName(name, order);
		if(TempRegion == null)
		{
			return null;
		}
		return (List<Region>)getHibernateTemplate().find("from Region r where r.parentId=?", TempRegion.getId());
	}

	@Override
	public Region getByNameAndLevel(String name, Integer level, int order) {
		// TODO Auto-generated method stub
		List<Region> regions = (List<Region>)getHibernateTemplate().find("from Region where name=? and level=?", name, level);
		if(regions != null && regions.size()!=0)
		{
			if(order < 0)
			{
				return null;
			}
			return regions.get(order);
		}
		return null;
	}

	@Override
	public List<Region> getSonByNameAndLevel(String name, Integer level,
			int order) {
		// TODO Auto-generated method stub
		Region tempRegion = getByNameAndLevel(name, level, order);
		if(tempRegion == null)
		{
			return null;
		}
		return (List<Region>)getHibernateTemplate().find("from Region r where r.parentId=?", tempRegion.getId());
	}

	@Override
	public List<Region> getSonByCode(String code, int order) {
		// TODO Auto-generated method stub
		Region tempRegion = getByCode(code, order);
		if(tempRegion == null)
		{
			return null;
		}
		return (List<Region>)getHibernateTemplate().find("from Region r where r.parentId=?", tempRegion.getId());
	}

	@Override
	public Region getByCode(String code, int order) {
		// TODO Auto-generated method stub
		List<Region> regions = (List<Region>)getHibernateTemplate().find("from Region where code=? and order=?", code, order);
		if(regions != null && regions.size()!=0)
		{
			return regions.get(0);
		}
		return null;
	}

}
