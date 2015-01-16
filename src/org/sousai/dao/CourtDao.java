package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;
import org.sousai.vo.CourtBean;

public interface CourtDao {
	/**
	 * 获取对应id标识的Court
	 * 
	 * @param id
	 *            Court的标识属性值
	 * @return id对应的持久层实例
	 */
	CourtBean get(Integer id);

	/**
	 * 将对应Court实例存入持久层
	 * 
	 * @param court
	 * @return 存入数据库后，对应的id
	 * @throws Exception 
	 */
	Integer save(Court court) throws Exception;

	/**
	 * 修改对应的持久化实例
	 * 
	 * @param court
	 */
	void update(Court court);

	/**
	 * 删除对应的持久化实例
	 * 
	 * @param court
	 */
	void delete(Court court);

	/**
	 * 删除对应id的持久化实例
	 * 
	 * @param id
	 */
	void delete(Integer id);

	/**
	 * 获取所有场地
	 * 
	 * @param rows
	 * @param currentPage
	 * 
	 * @return 所有场地
	 * @throws Exception
	 */
	List<CourtBean> findAll(Integer currentPage, Integer rows) throws Exception;

	/**
	 * 根据用户,获取用户所发布的所有场地
	 * 
	 * @return List<Court> 该用户发布的场地
	 */
	List<CourtBean> findByUser(User user);

	/**
	 * 根据用户id，获取用户所发布的所有场地
	 * 
	 * @param userId
	 *            用户id
	 * @return 该用户发布的所有场地
	 */
	List<CourtBean> findByUserId(Integer userId);

	/**
	 * 返回指定类型场地
	 * 
	 * @param courtType
	 *            场地类型
	 * @return 返回所有该类型场地
	 */
	List<CourtBean> findByCourtType(CourtType courType);

	/**
	 * 返回指定比赛场地
	 * 
	 * @param matchType
	 *            比赛类型
	 * @return 返回所有该比赛场地
	 */
	List<CourtBean> findByMatchType(String matchType);

	/**
	 * 根据参数，返回符合条件的场地
	 * 
	 * @param user
	 *            发表场地的用户
	 * @param courtType
	 *            场地类型
	 * @param matchType
	 *            比赛类型
	 * @param region
	 *            地址
	 * @return
	 */
	List<CourtBean> findByPram(User user, CourtType courtType,
			String matchType, Region region);

	List<CourtBean> findByRegionId(Integer regionId);

	/**
	 * 查询用户当天已发布场地数量
	 * 
	 * @param userId
	 *            用户标识
	 * @return
	 */
	int countRelMatchPerDay(Integer userId);

	/**
	 * 批量删除场地
	 * 
	 * @param courtIds
	 * @return
	 */
	int deleteCourts(Integer[] courtIds);

	/**
	 * 查询总比赛数
	 * 
	 * @return
	 */
	int countMatch();

	/**
	 * 查询符合条件的场地，并排序
	 * 
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 */
	List<CourtBean> findPagedByWhereOrderBy(String strWhere,
			Integer currentPage, Integer rows, String orderByCol, Boolean isAsc);

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
	List<CourtBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc) throws Exception;
	
	/**
	 * 用户高级搜索
	 * @param keyValue
	 * @param matchType
	 * @param courtTypeId
	 * @param region
	 * @param currentPage
	 * @param rows
	 * @param orderByCol
	 * @param isAsc
	 * @return
	 * @throws Exception
	 */
	List<CourtBean> findPagedByParams(String keyValue, String matchType, Integer courtTypeId, String region, int currentPage, int rows, String orderByCol,Boolean isAsc) throws Exception;
	
	/**
	 * 用户高级搜索时，计算符合的总数
	 * @param keyValue
	 * @param matchType
	 * @param courtTypeId
	 * @param region
	 * @return
	 * @throws Exception
	 */
	Integer countByParams(String keyValue, String matchType, Integer courtTypeId, String region) throws Exception;
}
