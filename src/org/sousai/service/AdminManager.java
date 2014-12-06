package org.sousai.service;

import org.sousai.vo.*;
import org.sousai.domain.*;

import java.util.List;

public interface AdminManager {

	/**
	 * 获取所有评论
	 * 
	 * @return
	 */
	public List<MessageBean> getAllMessage();

	/**
	 * 获取所有场地
	 * 
	 * @return
	 */
	public List<CourtBean> getAllCourt();

	/**
	 * 获取所有比赛
	 * 
	 * @return
	 */
	public List<MatchBean> getAllMatch(int currentPage, int rows);

	/**
	 * 获取所有用户
	 * 
	 * @return
	 */
	public List<UserBean> getAllUser();

	/**
	 * 批量删除比赛
	 * @param courtIds	
	 * @return
	 */
	public int deleteCourts(Integer[] courtIds);

	/**
	 * 批量删除比赛
	 * 
	 * @param matchIds	
	 * @return
	 */
	public int deleteMatches(Integer[] matchIds);
}
