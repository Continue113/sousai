package org.sousai.service.impl;

import java.util.List;

import org.sousai.service.AdminManager;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;
import org.sousai.vo.MessageBean;
import org.sousai.vo.UserBean;
import org.sousai.dao.*;
import org.sousai.domain.Match;

public class AdminManagerImpl implements AdminManager {

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

	@Override
	public List<MessageBean> getAllMessage() {
		return mesgDao.findAll();
	}

	@Override
	public List<CourtBean> getAllCourt(Integer currentPage, Integer rows) throws Exception {
		return courtDao.findPagedByWhereOrderBy(null, currentPage, rows, null, null);
	}

	@Override
	public List<MatchBean> getAllMatch(int currentPage, int rows) {
		return matchDao.findAll(currentPage, rows);
	}

	@Override
	public List<UserBean> getAllUser(int currentPage, int rows) {
		return userDao.findPagedAll(currentPage, rows);
	}
	
	@Override
	public int countAllUser(){
		return userDao.countAllUser();
	}
	@Override
	public int deleteCourts(Integer[] courtIds) {
		return courtDao.deleteCourts(courtIds);
	}

	@Override
	public int deleteMatches(Integer[] matchIds) {
		System.out.println(matchIds);
		return matchDao.deleteMatches(matchIds);
	}

	@Override
	public int countAllCourt() throws Exception {
		return courtDao.countMatch();
	}

	@Override
	public int countAllMatch() throws Exception {
		return matchDao.countMatch();
	}

	@Override
	public List<CourtBean> findPagedCourtByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		return courtDao.findPagedByKeyValueOrderBy(columns, keyValue, currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public List<MatchBean> findPagedMatchByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		return matchDao.findPagedByKeyValueOrderBy(columns, keyValue, currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public List<MessageBean> findPagedMesgByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		return mesgDao.findPagedByKeyValueOrderBy(columns, keyValue, currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public List<UserBean> findPagedUserByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception {
		return userDao.findPagedByKeyValueOrderBy(columns, keyValue, currentPage, rows, orderByCol, isAsc);
	}

	@Override
	public int countAllMessage() throws Exception {
		return mesgDao.countCourt();
	}
}
