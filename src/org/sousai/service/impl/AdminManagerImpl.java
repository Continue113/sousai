package org.sousai.service.impl;

import java.util.List;

import org.sousai.service.AdminManager;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;
import org.sousai.vo.MessageBean;
import org.sousai.vo.UserBean;
import org.sousai.dao.*;
import org.sousai.domain.Match;
import org.sousai.domain.MatchClass;
import org.sousai.domain.MatchType;
import org.sousai.domain.Message;

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

	public void setUserMarkDao(UserMarkDao userMarkDao) {
		this.userMarkDao = userMarkDao;
	}

	@Override
	public List<MessageBean> getAllMessage() {
		return mesgDao.findAll();
	}

	@Override
	public List<CourtBean> getAllCourt(Integer currentPage, Integer rows)
			throws Exception {
		return courtDao.findPagedByWhereOrderBy(null, currentPage, rows, null,
				null);
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
	public int countAllUser(Integer selType) {
		return userDao.countAllUser(selType);
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
	public int countAllCourt(Integer selType) throws Exception {
		return courtDao.countMatch(selType);
	}

	@Override
	public int countAllMatch(Integer selType) throws Exception {
		return matchDao.countMatch(selType);
	}

	@Override
	public List<CourtBean> findPagedCourtByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		return courtDao.findPagedByKeyValueOrderBy(columns, keyValue,
				currentPage, rows, orderByCol, isAsc, selType);
	}

	@Override
	public List<MatchBean> findPagedMatchByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		return matchDao.findPagedByKeyValueOrderBy(columns, keyValue,
				currentPage, rows, orderByCol, isAsc, selType);
	}

	@Override
	public List<MessageBean> findPagedMesgByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		return mesgDao.findPagedByKeyValueOrderBy(columns, keyValue,
				currentPage, rows, orderByCol, isAsc, selType);
	}

	@Override
	public List<UserBean> findPagedUserByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception {
		return userDao.findPagedByKeyValueOrderBy(columns, keyValue,
				currentPage, rows, orderByCol, isAsc, selType);
	}

	@Override
	public int countAllMessage(Integer selType) throws Exception {
		return mesgDao.countCourt(selType);
	}

	@Override
	public void updateMessage(Message message) throws Exception {
		mesgDao.update(message);
	}

	@Override
	public void deleteMesgs(Long[] ids) throws Exception {
		mesgDao.deleteMesgs(ids);
	}

	@Override
	public void relCourts(Integer[] ids, boolean isRel) throws Exception {
		courtDao.relCourts(ids, isRel);
	}

	@Override
	public void deleteUsers(Integer[] ids) throws Exception {
		userDao.deleteUsers(ids);
	}

	@Override
	public void relMatches(Integer[] ids, boolean isRel) throws Exception {
		matchDao.relMatchesByAdmin(ids, isRel);
	}

	@Override
	public void addMatchClass(MatchClass mc) throws Exception {
		matchClassDao.save(mc);
	}

	@Override
	public void deleteMatchClasses(Integer[] ids) throws Exception {
		matchClassDao.deleteMatchClasses(ids);
	}

	@Override
	public void updateMatchClass(MatchClass mc) throws Exception {
		matchClassDao.update(mc);
	}

	@Override
	public void addMatchType(MatchType mt) throws Exception {
		matchTypeDao.save(mt);
	}

	@Override
	public void deleteMatchTypes(Integer[] ids) throws Exception {
		matchTypeDao.deleteMatchTypes(ids);
	}

	@Override
	public void updateMatchType(MatchType mt) throws Exception {
		matchTypeDao.update(mt);
	}
}
