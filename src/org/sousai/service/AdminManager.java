package org.sousai.service;

import org.sousai.vo.*;
import org.sousai.domain.*;

import java.util.List;
import java.util.Map;

public interface AdminManager {
	
	/**
	 * 获取所有评论
	 * 
	 * @return
	 */
	public List<MessageBean> getAllMessage();

	public int countAllMessage(Integer selType) throws Exception;

	/**
	 * 获取所有场地
	 * 
	 * @param rows
	 * @param currentPage
	 * 
	 * @return
	 * @throws Exception
	 */
	public List<CourtBean> getAllCourt(Integer currentPage, Integer rows)
			throws Exception;

	public int countAllCourt(Integer selType) throws Exception;

	/**
	 * 获取所有比赛
	 * 
	 * @return
	 */
	public List<MatchBean> getAllMatch(int currentPage, int rows);

	public int countAllMatch(Integer selType) throws Exception;

	/**
	 * 获取MATCHES表中的所有比赛类型（和MATCHTYPE表中不一定相同），用于管理员维护比赛类型
	 * @return
	 * @throws Exception
	 */
	public List<String> getAllMatchTypeInMatches() throws Exception;
	
	/**
	 * 获取所有用户
	 * 
	 * @return
	 */
	public List<UserBean> getAllUser(int currentPage, int rows);

	/**
	 * 获取总用户数量
	 * 
	 * @return
	 */
	public int countAllUser(Integer selType);

	/**
	 * 批量删除比赛
	 * 
	 * @param courtIds
	 * @return
	 */
	public int deleteCourts(Integer[] courtIds);

	/**
	 * 获取指定场地举办的比赛数
	 * @param courtId
	 * @return
	 * @throws Exception 
	 */
	public int countMatchByCourtId(Integer courtId) throws Exception;
	public Map<Integer, Integer> countMatchByCourtIds(Integer[] courtIds) throws Exception;
	/**
	 * 批量删除比赛
	 * 
	 * @param iMatchIds
	 * @return
	 */
	public int deleteMatches(Integer[] iMatchIds);
	
	/**
	 * 获取指定比赛被用户收藏的次数
	 * @param matchId
	 * @return
	 * @throws Exception 
	 */
	public int countUserMarkByMatchId(Integer matchId) throws Exception;
	
	public Map<Integer, Integer> countUserMarkByMatchIds(Integer[] matchIds) throws Exception;

	/**
	 * 根据keyValue在columns中模糊查询符合条件的场地，并排序分页
	 * 
	 * @param columns
	 * @param keyValue
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 * @throws Exception
	 */
	List<CourtBean> findPagedCourtByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	List<MatchBean> findPagedMatchByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	List<MessageBean> findPagedMesgByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	List<UserBean> findPagedUserByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	public void updateMessage(Message message) throws Exception;

	/**
	 * 批量删除评论（将state置为0）
	 * 
	 * @param ids
	 * @throws Exception
	 */
	public void deleteMesgs(Long[] ids) throws Exception;

	/**
	 * 批量删除用户（将type置为0）
	 * 
	 * @param ids
	 * @throws Exception
	 */
	public void deleteUsers(Integer[] ids) throws Exception;

	/**
	 * 批量发布或取消发布场地（将verify置为1或0）
	 * 
	 * @param ids
	 * @param isRel
	 * @throws Exception
	 */
	public void relCourts(Integer[] ids, boolean isRel) throws Exception;

	/**
	 * 批量发布或取消发布比赛（将verify置为1或0）
	 * 
	 * @param ids
	 * @param isRel
	 * @throws Exception
	 */
	public void relMatches(Integer[] ids, boolean isRel) throws Exception;
	
	/**
	 * 增加比赛大类
	 * @param mc
	 * @throws Exception
	 */
	public void addMatchClass(MatchClass mc) throws Exception;
	public void deleteMatchClasses(Integer[] ids) throws Exception;
	public void updateMatchClass(MatchClass mc) throws Exception;
	public void addMatchType(MatchType mt) throws Exception;
	public void deleteMatchTypes(Integer[] ids) throws Exception;
	public void updateMatchType(MatchType mt) throws Exception;

	public void addHotWord(HotWord hotWord) throws Exception;
	public void deleteHotWord(HotWord hotWord) throws Exception;
	public void updateHotWord(HotWord hotWord) throws Exception;
	public List<HotWord> findAllHotWords() throws Exception;
	
	public void addCourtType(CourtType courtType) throws Exception;
	public void deleteCourtType(CourtType courtType) throws Exception;
	public void updateCourtType(CourtType courtType) throws Exception;
	public List<CourtType> findAllCourtTypes() throws Exception;
}
