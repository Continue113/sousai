package org.sousai.service.impl;

import java.util.List;
import java.util.Map;

import org.sousai.service.AdminManager;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;
import org.sousai.vo.MessageBean;
import org.sousai.vo.UserBean;
import org.sousai.dao.*;
import org.sousai.domain.CourtType;
import org.sousai.domain.HotWord;
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
	private HotWordDao hotWordDao;

	/**
	 * @return the userDao
	 */
	public UserDao getUserDao() {
		return userDao;
	}

	/**
	 * @param userDao
	 *            the userDao to set
	 */
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	/**
	 * @return the courtDao
	 */
	public CourtDao getCourtDao() {
		return courtDao;
	}

	/**
	 * @param courtDao
	 *            the courtDao to set
	 */
	public void setCourtDao(CourtDao courtDao) {
		this.courtDao = courtDao;
	}

	/**
	 * @return the courtPicDao
	 */
	public CourtPicDao getCourtPicDao() {
		return courtPicDao;
	}

	/**
	 * @param courtPicDao
	 *            the courtPicDao to set
	 */
	public void setCourtPicDao(CourtPicDao courtPicDao) {
		this.courtPicDao = courtPicDao;
	}

	/**
	 * @return the mesgDao
	 */
	public MesgDao getMesgDao() {
		return mesgDao;
	}

	/**
	 * @param mesgDao
	 *            the mesgDao to set
	 */
	public void setMesgDao(MesgDao mesgDao) {
		this.mesgDao = mesgDao;
	}

	/**
	 * @return the regionDao
	 */
	public RegionDao getRegionDao() {
		return regionDao;
	}

	/**
	 * @param regionDao
	 *            the regionDao to set
	 */
	public void setRegionDao(RegionDao regionDao) {
		this.regionDao = regionDao;
	}

	/**
	 * @return the courtTypeDao
	 */
	public CourtTypeDao getCourtTypeDao() {
		return courtTypeDao;
	}

	/**
	 * @param courtTypeDao
	 *            the courtTypeDao to set
	 */
	public void setCourtTypeDao(CourtTypeDao courtTypeDao) {
		this.courtTypeDao = courtTypeDao;
	}

	/**
	 * @return the matchClassDao
	 */
	public MatchClassDao getMatchClassDao() {
		return matchClassDao;
	}

	/**
	 * @param matchClassDao
	 *            the matchClassDao to set
	 */
	public void setMatchClassDao(MatchClassDao matchClassDao) {
		this.matchClassDao = matchClassDao;
	}

	/**
	 * @return the matchTypeDao
	 */
	public MatchTypeDao getMatchTypeDao() {
		return matchTypeDao;
	}

	/**
	 * @param matchTypeDao
	 *            the matchTypeDao to set
	 */
	public void setMatchTypeDao(MatchTypeDao matchTypeDao) {
		this.matchTypeDao = matchTypeDao;
	}

	/**
	 * @return the matchDao
	 */
	public MatchDao getMatchDao() {
		return matchDao;
	}

	/**
	 * @param matchDao
	 *            the matchDao to set
	 */
	public void setMatchDao(MatchDao matchDao) {
		this.matchDao = matchDao;
	}

	/**
	 * @return the userMarkDao
	 */
	public UserMarkDao getUserMarkDao() {
		return userMarkDao;
	}

	/**
	 * @param userMarkDao
	 *            the userMarkDao to set
	 */
	public void setUserMarkDao(UserMarkDao userMarkDao) {
		this.userMarkDao = userMarkDao;
	}

	/**
	 * @return the hotWordDao
	 */
	public HotWordDao getHotWordDao() {
		return hotWordDao;
	}

	/**
	 * @param hotWordDao
	 *            the hotWordDao to set
	 */
	public void setHotWordDao(HotWordDao hotWordDao) {
		this.hotWordDao = hotWordDao;
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

	@Override
	public void addHotWord(HotWord hotWord) throws Exception {
		hotWordDao.save(hotWord);
	}

	@Override
	public void deleteHotWord(HotWord hotWord) throws Exception {
		hotWordDao.delete(hotWord);
	}

	@Override
	public void updateHotWord(HotWord hotWord) throws Exception {
		hotWordDao.update(hotWord);
	}

	@Override
	public List<HotWord> findAllHotWords() throws Exception {
		return hotWordDao.findAll();
	}

	@Override
	public void addCourtType(CourtType courtType) throws Exception {
		courtTypeDao.save(courtType);
	}

	@Override
	public void deleteCourtType(CourtType courtType) throws Exception {
		courtTypeDao.delete(courtType);
	}

	@Override
	public void updateCourtType(CourtType courtType) throws Exception {
		courtTypeDao.update(courtType);		
	}

	@Override
	public List<CourtType> findAllCourtTypes() throws Exception {
		return courtTypeDao.findAll();
	}

	@Override
	public List<MatchClass> findAllMatchClasses() throws Exception{
		return matchClassDao.findAll();
	}
	@Override
	public List<String> getAllMatchTypeInMatches() throws Exception {
		return matchDao.findMatchType();
	}

	@Override
	public List<CourtType> findCourtTypeByMatchTypeId(Integer id)
			throws Exception {
		return courtTypeDao.findByMatchTypeId(id, false);
	}
	
	@Override
	public int countMatchByCourtId(Integer courtId) throws Exception{
		return matchDao.countByCourtId(courtId);
	}

	@Override
	public int countUserMarkByMatchId(Integer matchId) throws Exception{
		return userMarkDao.countByMarkedMatchId(matchId);
	}

	@Override
	public Map<Integer, Integer> countMatchByCourtIds(Integer[] courtIds)
			throws Exception {
		return matchDao.countByCourtIds(courtIds);
	}

	@Override
	public Map<Integer, Integer> countUserMarkByMatchIds(Integer[] matchIds)
			throws Exception {
		return userMarkDao.countByMatchIds(matchIds);
	}
}
