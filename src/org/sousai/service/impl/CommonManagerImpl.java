package org.sousai.service.impl;

import java.util.List;

import org.sousai.domain.CourtType;
import org.sousai.domain.MatchType;
import org.sousai.domain.Region;
import org.sousai.service.CommonManager;
import org.sousai.tools.MyPrint;
import org.sousai.dao.*;

public class CommonManagerImpl implements CommonManager {

	private UserDao userDao;
	private CourtDao courtDao;
	private CourtPicDao courtPicDao;
	private MesgDao mesgDao;
	private RegionDao regionDao;
	private CourtTypeDao courtTypeDao;
	private MatchTypeDao matchTypeDao;
	private MatchDao matchDao;
	
	public void setUserDao(UserDao userDao)
	{
		this.userDao = userDao;
	}
	
	public void setCourtDao(CourtDao courtDao)
	{
		this.courtDao = courtDao;
	}
	
	public void setCourtPicDao(CourtPicDao courtPicDao)
	{
		this.courtPicDao = courtPicDao;
	}
	
	public void setMesgDao(MesgDao mesgDao)
	{
		this.mesgDao = mesgDao;
	}
	
	public void setRegionDao(RegionDao regionDao)
	{
		this.regionDao = regionDao;
	}
	
	public void setCourtTypeDao(CourtTypeDao courtTypeDao)
	{
		this.courtTypeDao = courtTypeDao;
	}
	
	public void setMatchTypeDao(MatchTypeDao matchTypeDao)
	{
		this.matchTypeDao = matchTypeDao;
	}
	
	public void setMatchDao(MatchDao matchDao)
	{
		this.matchDao = matchDao;
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
		MyPrint.myPrint("in");
		MyPrint.myPrint("cmg.getCity() now");
		MyPrint.myPrint("provinceCode = "+provinceCode+" /n order = "+ order);
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

	@Override
	public List<MatchType> findAllMatchType() {
		// TODO Auto-generated method stub
		MyPrint.myPrint("findAllMatchType");
		return matchTypeDao.findAll();
	}

	@Override
	public List<CourtType> findCourtTypeByMatchTypeId(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return courtTypeDao.findByMatchTypeId(id);
	}

	@Override
	public List<MatchType> findAllMatchTypeEpt(Integer id) {
		// TODO Auto-generated method stub
		return matchTypeDao.findAllExcept(id);
	}

}
