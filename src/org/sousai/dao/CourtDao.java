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
	 * @param currentPage
	 * @param rows
	 * @return 该用户发布的所有场地
	 */
	List<CourtBean> findPagedByUserId(Integer userId, Integer currentPage,
			Integer rows);

	/**
	 * 根据用户id，获取用户所发布的所有场地的数量
	 * @param userId
	 * @return
	 */
	int countByUserId(Integer userId);
	
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
	 * @param currentPage
	 * @param rows
	 * @return 返回所有该比赛场地
	 */
	List<CourtBean> findPagedByMatchType(String matchType, Integer currentPage,
			Integer rows);

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

	List<CourtBean> findPagedByRegionId(Integer regionId, Integer currentPage,
			Integer rows);

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
	 * 查询总比赛数或未审核通过比赛数
	 * 
	 * @param selType 0 总比赛数，1 未审核通过比赛数
	 * @return
	 */
	int countMatch(Integer selType);

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
	 * @param selType
	 * @return
	 * @throws Exception
	 */
	List<CourtBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	/**
	 * 用户高级搜索
	 * 
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
	List<CourtBean> findPagedByParams(String keyValue, String matchType,
			Integer courtTypeId, String region, int currentPage, int rows,
			String orderByCol, Boolean isAsc) throws Exception;

	/**
	 * 用户高级搜索时，计算符合的总数
	 * 
	 * @param keyValue
	 * @param matchType
	 * @param courtTypeId
	 * @param region
	 * @return
	 * @throws Exception
	 */
	Integer countByParams(String keyValue, String matchType,
			Integer courtTypeId, String region) throws Exception;

	/**
	 * 通过region筛选场地
	 * 
	 * @param region
	 * @return
	 * @throws Exception
	 */
	List<CourtBean> findPagedByRegion(String region, int currentPage, int rows)
			throws Exception;

	/**
	 * 通过region筛选场地，返回最后的记录数
	 * 
	 * @param region
	 * @return
	 * @throws Exception
	 */
	Integer countByRegion(String region) throws Exception;

	/**
	 * 批量发布或取消发布场地（将verify设为1或0）
	 * 
	 * @param ids
	 * @param isRel
	 * @throws Exception
	 */
	void relCourts(Integer[] ids, boolean isRel) throws Exception;

	Integer saveWithoutT(Court court) throws Exception;

	int countCourtByAdmin(String[] columns, String keyValue, Integer selType)
			throws Exception;
}
