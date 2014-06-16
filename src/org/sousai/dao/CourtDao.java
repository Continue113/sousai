package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;

public interface CourtDao 
{
	/**
	 * 获取对应id标识的Court
	 * @param id Court的标识属性值
	 * @return id对应的持久层实例
	 */
	Court get(Long id);
	
	/**
	 * 将对应Court实例存入持久层
	 * @param court
	 * @return 存入数据库后，对应的id
	 */
	Long save(Court court);
	
	/**
	 * 修改对应的持久化实例
	 * @param court
	 */
	void update(Court court);
	
	/**
	 * 删除对应的持久化实例
	 * @param court
	 */
	void delete(Court court);
	
	/**
	 * 删除对应id的持久化实例
	 * @param id
	 */
	void delete(Long id);
	
	/**
	 * 获取所有场地
	 * @return 所有场地
	 */
	List<Court> findAll();
	
	/**
	 * 根据用户,获取用户所发布的所有场地
	 * @return List<Court> 该用户发布的场地
	 */
	List<Court> findByUser(User user);
	
	/**
	 * 返回指定类型场地
	 * @param courtType 场地类型
	 * @return 返回所有该类型场地
	 */
	List<Court> findByCourtType(CourtType courType);
	
	/**
	 * 返回指定比赛场地
	 * @param matchType 比赛类型
	 * @return 返回所有该比赛场地
	 */
	List<Court> findByMatchType(String matchType);
	
	/**
	 * 根据参数，返回符合条件的场地
	 * @param user 发表场地的用户
	 * @param courtType 场地类型
	 * @param matchType 比赛类型
	 * @param region 地址
	 * @return
	 */
	List<Court> findByPram(User user, CourtType courtType,
			String matchType, Region region);

}
