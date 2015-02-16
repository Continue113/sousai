package org.sousai.dao;

import java.util.List;
import java.util.Map;

import org.sousai.domain.UserMark;
import org.sousai.vo.MatchBean;

public interface UserMarkDao{

	UserMark get(Integer id) throws Exception;
	
	Long save(UserMark userMark) throws Exception;
	
	void update(UserMark userMark) throws Exception;
	
	void delete(UserMark userMark) throws Exception;
	
	void delete(Integer id) throws Exception;
	
	/**
	 * 用户收藏比赛
	 * @param userId
	 * @param matchId
	 * @return
	 * @throws Exception 
	 */
	Boolean markMatchByUserId(Integer userId, Integer matchId) throws Exception;
	
	/**
	 * 获取用户收藏的比赛
	 * @param userId
	 * @param currentPage
	 * @param rows
	 * @return
	 * @throws Exception 
	 */
	List<MatchBean> findByMarkingUserId(Integer userId, int currentPage,
			int rows) throws Exception;
	
	/**
	 * 获取用户收藏的比赛数量
	 * @param userId
	 * @return
	 * @throws Exception 
	 */
	int countByMarkingUserId(Integer userId) throws Exception;
	
	/**
	 * 获取指定比赛的收藏数
	 * @param matchId
	 * @return
	 * @throws Exception 
	 */
	int countByMarkedMatchId(Integer matchId) throws Exception;

	/**
	 * 获取各比赛分别被收藏的次数
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	Map<String, Integer> countByMatchIds(Integer[] ids) throws Exception;
}
