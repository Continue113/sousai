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

	public int countAllMessage() throws Exception;
	/**
	 * 获取所有场地
	 * @param rows 
	 * @param currentPage 
	 * 
	 * @return
	 * @throws Exception 
	 */
	public List<CourtBean> getAllCourt(Integer currentPage, Integer rows) throws Exception;
	
	public int countAllCourt() throws Exception;
	/**
	 * 获取所有比赛
	 * 
	 * @return
	 */
	public List<MatchBean> getAllMatch(int currentPage, int rows);

	public int countAllMatch() throws Exception;
	/**
	 * 获取所有用户
	 * 
	 * @return
	 */
	public List<UserBean> getAllUser(int currentPage, int rows);

	/**
	 * 获取总用户数量
	 * @return
	 */
	public int countAllUser();
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
	
	/**
	 * 根据keyValue在columns中模糊查询符合条件的场地，并排序分页
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
			String orderByCol, Boolean isAsc) throws Exception;
	
	List<MatchBean> findPagedMatchByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception;
	
	List<MessageBean> findPagedMesgByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception;
	
	List<UserBean> findPagedUserByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception;
}
