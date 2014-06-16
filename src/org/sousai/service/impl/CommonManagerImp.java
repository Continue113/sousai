package org.sousai.service.impl;

import java.util.List;

import org.sousai.domain.CourtType;
import org.sousai.domain.Region;
import org.sousai.service.CommonManager;
import org.sousai.dao.*;

public class CommonManagerImp implements CommonManager {

	private RegionDao regionDao;
	private CourtTypeDao courtTypeDao;
	
	//regionDao的setter和getter
	public void setRegionDao(RegionDao regionDao)
	{
		this.regionDao = regionDao;
	}
	
	//courtTypeDao的setter和getter
	public void setCourtTypeDao(CourtTypeDao courtTypeDao)
	{
		this.courtTypeDao = courtTypeDao;
	}
	
	@Override
	public List<Region> getProvince() {
		// TODO Auto-generated method stub
		//0为数据库中中国的id
		return regionDao.getSon(1);
	}

	@Override
	public List<Region> getCity(String provinceCode, int order) {
		// TODO Auto-generated method stub
		return regionDao.getSonByCode(provinceCode, order);
	}

	@Override
	public List<Region> getZone(String cityCode, int order) {
		// TODO Auto-generated method stub
		return regionDao.getSonByCode(cityCode, order);
	}

	@Override
	public CourtType findCourtTypeById(Integer id) {
		// TODO Auto-generated method stub
		return courtTypeDao.get(id);
	}

}
