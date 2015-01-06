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

	Integer save(Match match);

	void update(Match match);

	void delete(Match match);

	void delete(Integer id);

	List<MatchBean> findAll(int currentPage, int rows);

	List<MatchBean> findByUser(User user,int currentPage, int rows);

	List<MatchBean> findByUserId(Integer userId,int currentPage, int rows);

	List<MatchBean> findByMatchTypeId(Integer matchTypeId,int currentPage, int rows);

	List<MatchBean> findByMatchTypeName(String matchTypeName,int currentPage, int rows);

	List<MatchBean> findByMatchClassId(Integer matchClassId,int currentPage, int rows);

	List<MatchBean> findByMatchClassName(String matchClassName,int currentPage, int rows);

	List<MatchBean> findByMarkingUserId(Integer userId,int currentPage, int rows);

	/**
	 * 根据可选参数，从数据库返回比赛。
	 * 
	 * @param dayOfWeek
	 *            其中的int元素1为周日，2为周一，…，7为周六。若不使用此参数可传递null
	 * @param state
	 *            0为报名中，1为比赛中，2为已结束。若不使用此参数，传递-1
	 * @param date
	 *            此处应传递当前日期。若state为-1，此处为null
	 * @param regionId
	 *            地点id。若不使用此参数，传递-1
	 * @return 符合参数要求的所有比赛
	 */
	List<MatchBean> findByParms(int[] dayOfWeek, int state, Date date,
			Integer regionId,int currentPage, int rows);

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
	 * @param keyValue
	 * @return
	 */
	List<MatchBean> findByKeyValue(String keyValue);

	List<MatchBean> findPagedByKeyValue(String keyValue, int currentPage,
			int pageSize);

	int countMatch();
	
	List<MatchBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception;
}
