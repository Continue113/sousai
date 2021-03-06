package org.sousai.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.sousai.domain.*;
import org.sousai.vo.CourtBean;
import org.sousai.vo.MatchBean;

public interface MatchDao {

	public static final int EXCEED_QUOTA = -1;

	Match get(Integer id);

	MatchBean getMatchBean(Integer id) throws Exception;

	Integer save(Match match);

	void update(Match match);

	void delete(Match match);

	void delete(Integer id);

	List<MatchBean> findAll(int currentPage, int rows);

	List<MatchBean> findByUser(User user, int currentPage, int rows);

	List<MatchBean> findByUserId(Integer userId, String matchType, int currentPage, int rows);

	List<MatchBean> findByMatchTypeId(Integer matchTypeId, int currentPage,
			int rows);

	List<MatchBean> findByMatchTypeName(String matchTypeName, int currentPage,
			int rows);

	List<MatchBean> findByMatchClassId(Integer matchClassId, int currentPage,
			int rows);

	List<MatchBean> findByMatchClassName(String matchClassName,
			int currentPage, int rows);

	/**
	 * 统计用户发布的每种比赛的数量
	 * 
	 * @param userId
	 *            用户标识
	 * @return
	 */
	Map<String, Integer> getEachMatchCount(Integer userId);

	/**
	 * 统计用户当天发布的比赛数量
	 * 
	 * @param userId
	 *            用户标识
	 * @return
	 */
	int countRelMatchPerDay(Integer userId);

	/**
	 * 批量删除比赛
	 * 
	 * @param matchIds
	 *            比赛id数组
	 * 
	 * @return
	 */
	int deleteMatches(Integer[] matchIds);

	/**
	 * 模糊匹配某个字段
	 * 
	 * @param keyValue
	 * @return
	 */
	List<MatchBean> findByKeyValue(String keyValue);

	/**
	 * 模糊匹配某个字段,分页查询
	 * 
	 * @param keyValue
	 * @return
	 */
	List<MatchBean> findPagedByKeyValue(String keyValue, int currentPage,
			int pageSize);

	/**
	 * 查询某个场地举办的所有比赛
	 * @param courtId
	 * @param currentPage
	 * @param rows
	 * @return
	 * @throws Exception 
	 */
	List<MatchBean> findPagedByCourtId(Integer courtId, int currentPage, int rows) throws Exception;
	
	int countMatch(Integer selType);
	
	int countByUserId(Integer userId);

	/**
	 * 
	 * @param columns
	 * @param keyValue
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @param selType
	 * @return
	 * @throws Exception
	 */
	List<MatchBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	/**
	 * 高级搜索比赛
	 * 
	 * @param keyValue
	 * @param matchType
	 * @param now
	 * @param matchState
	 * @param dayOfWeek
	 * @param beginTime
	 * @param endTime
	 * @param region
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 * @throws Exception
	 */
	List<MatchBean> findPagedByParams(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region, int currentPage, int rows,
			String orderByCol, Boolean isAsc) throws Exception;
	
	/**
	 * 获得Matches表中的matchType，和MatchType中不一定一样
	 * @return
	 * @throws Exception 
	 */
	List<String> findMatchType() throws Exception;
	
	/**
	 * 高级搜索比赛的结果数
	 * @param keyValue
	 * @param matchType
	 * @param now
	 * @param matchState
	 * @param dayOfWeek
	 * @param beginTime
	 * @param endTime
	 * @param region
	 * @return
	 * @throws Exception
	 */
	int countByParams(String keyValue, String matchType,
			java.sql.Date now, int matchState, int dayOfWeek, Date beginTime,
			Date endTime, String region) throws Exception;
	
	/**
	 * 获取某个场地所举办的所有比赛数量
	 * @param courtId
	 * @return
	 */
	int countByCourtId(Integer courtId) throws Exception;

	/**
	 * 批量发布或取消发布比赛（将verify置为1或0）
	 * @param ids
	 * @param isRel
	 */
	void relMatchesByAdmin(Integer[] ids, boolean isRel);
	
	/**
	 * 获取各场地所举办的所有比赛数量
	 * @param ids
	 * @return
	 * @throws Exception 
	 */
	Map<Integer, Integer> countByCourtIds(Integer[] ids) throws Exception;

	int countMatchByAdmin(String[] columns, String keyValue, Integer selType)
			throws Exception;
	
}
