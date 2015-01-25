package org.sousai.dao;

import java.util.List;

import org.sousai.domain.UserMark;
import org.sousai.vo.MatchBean;

public interface UserMarkDao{

	UserMark get(Integer id);
	
	Long save(UserMark userMark) throws Exception;
	
	void update(UserMark userMark);
	
	void delete(UserMark userMark);
	
	void delete(Integer id);
	
	/**
	 * 用户收藏比赛
	 * @param userId
	 * @param matchId
	 * @return
	 */
	Boolean markMatchByUserId(Integer userId, Integer matchId);
	
	/**
	 * 获取用户收藏的比赛
	 * @param userId
	 * @param currentPage
	 * @param rows
	 * @return
	 */
	List<MatchBean> findByMarkingUserId(Integer userId, int currentPage,
			int rows);
	
	/**
	 * 获取用户收藏的比赛数量
	 * @param userId
	 * @return
	 */
	int countByMarkingUserId(Integer userId);
}
