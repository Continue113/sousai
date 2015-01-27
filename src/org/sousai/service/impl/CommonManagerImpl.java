package org.sousai.service.impl;

import java.util.Date;
import java.util.List;

import org.sousai.domain.*;
import org.sousai.service.CommonManager;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;
import org.sousai.dao.*;
import org.sousai.dao.impl.MatchDaoHibernate;

public class CommonManagerImpl implements CommonManager {

	private UserDao userDao;
	private CourtDao courtDao;
	private CourtPicDao courtPicDao;
	private MesgDao mesgDao;
	private RegionDao regionDao;
	private CourtTypeDao courtTypeDao;
	private MatchClassDao matchClassDao;
	private MatchTypeDao matchTypeDao;
	private MatchDao matchDao;
	private UserMarkDao userMarkDao;

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	public void setCourtDao(CourtDao courtDao) {
		this.courtDao = courtDao;
	}

	public void setCourtPicDao(CourtPicDao courtPicDao) {
		this.courtPicDao = courtPicDao;
	}

	public void setMesgDao(MesgDao mesgDao) {
		this.mesgDao = mesgDao;
	}

	public void setRegionDao(RegionDao regionDao) {
		this.regionDao = regionDao;
	}

	public void setCourtTypeDao(CourtTypeDao courtTypeDao) {
		this.courtTypeDao = courtTypeDao;
	}

	public void setMatchClassDao(MatchClassDao matchClassDao) {
		this.matchClassDao = matchClassDao;
	}

	public void setMatchTypeDao(MatchTypeDao matchTypeDao) {
		this.matchTypeDao = matchTypeDao;
	}

	public void setMatchDao(MatchDao matchDao) {
		this.matchDao = matchDao;
	}

	public void setUserMarkDao(UserMarkDao userMarkDao) {
		this.userMarkDao = userMarkDao;
	}

	@Override
	public List<Region> getProvince() {
		// 0为数据库中中国的id
		return regionDao.getSon(1);
	}

	@Override
	public List<Region> getCity(String provinceCode, int order) {
		MyPrint.myPrint("in");
		MyPrint.myPrint("cmg.getCity() now");
		MyPrint.myPrint("provinceCode = " + provinceCode + " /n order = "
				+ order);
		return regionDao.getSonByCode(provinceCode, order);
	}

	@Override
	public List<Region> getZone(String cityCode, int order) {
		return regionDao.getSonByCode(cityCode, order);
	}

	@Override
	public CourtType findCourtTypeById(Integer id) {
		return courtTypeDao.get(id);
	}

	@Override
	public List<CourtType> findCourtTypeByMatchTypeId(Integer id)
			throws Exception {
		return courtTypeDao.findByMatchTypeId(id);
	}

	@Override
	public List<MatchType> findAllMatchTypeEpt(Integer id) {
		return matchTypeDao.findAllExcept(id);
	}

	@Override
	public List<MatchType> findMatchTypeByMatchClassIdEpt(Integer mcId,
			Integer id) {
		return matchTypeDao.findAllByMcIdExcept(mcId, id);
	}

	@Override
	public List<MatchClass> findAllMatchClass() {
		return matchClassDao.findAll();
	}

	@Override
	public List<MatchClass> findAllMatchClassEpt(Integer id) throws Exception {
		MyPrint.myPrint("in findAllMatchClassEpt");
		return matchClassDao.findAllExcept(id);
	}

	@Override
	public List<MatchBean> findMatchByMatchTypeName(String typeName,
			int currentPage, int rows) {
		return matchDao.findByMatchTypeName(typeName, currentPage, rows);
	}

	@Override
	public List<CourtBean> findPagedAllCourtOrderBy(Integer currentPage,
			Integer rows, String orderByCol, Boolean isAsc) {
		return courtDao.findPagedByWhereOrderBy(null, currentPage, rows,
				orderByCol, isAsc);
	}

	@Override
	public List<CourtBean> findPagedCourtByParams(String keyValue,
			String matchType, Integer courtTypeId, String region,
			int currentPage, int rows, String orderByCol, Boolean isAsc)
			throws Exception {
		return courtDao.findPagedByParams(keyValue, matchType, courtTypeId,
				region, currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public CourtBean findCourtBeanById(Integer id) {
		return courtDao.get(id);
	}

	@Override
	public MatchBean findMatchBeanById(Integer id) throws Exception{
		return matchDao.getMatchBean(id);
	}

	@Override
	public Integer countCourtByParams(String keyValue, String matchType,
			Integer courtTypeId, String region) throws Exception {
		return courtDao.countByParams(keyValue, matchType, courtTypeId, region);
	}

	@Override
	public void updateMatch(Match match) throws Exception {
		matchDao.update(match);
	}

	@Override
	public void updateCourt(Court court) throws Exception {
		courtDao.update(court);
	}

	@Override
	public List<MatchBean> findPagedMatchByParams(String keyValue,
			String matchType, java.sql.Date now, int matchState, int dayOfWeek, Date beginTime, Date endTime, String region,
			int currentPage, int rows, String orderByCol, Boolean isAsc)
			throws Exception {
		return matchDao.findPagedByParams(keyValue, matchType, now, matchState, dayOfWeek, beginTime, endTime, region,
				currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public Integer countMatchByParams(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region) throws Exception {
		return matchDao.countByParams(keyValue, matchType, now, matchState, dayOfWeek, beginTime, endTime, region);
	}

	@Override
	public List<MatchBean> findPagedMatchByCourtId(Integer courtId,
			int currentPage, int rows) throws Exception {
		return matchDao.findPagedByCourtId(courtId, currentPage, rows);
	}

	@Override
	public int countMatchByCourtId(Integer courtId) throws Exception {
		return matchDao.countByCourtId(courtId);
	}

}
