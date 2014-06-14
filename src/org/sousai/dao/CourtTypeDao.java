package org.sousai.dao;

import java.util.List;

import org.sousai.domain.*;

public interface CourtTypeDao 
{
	/**
	 * 获取对应id标识的CourtType
	 * @param id CourtType的标识属性值
	 * @return id对应的持久层实例
	 */
	CourtType get(Integer id);
	
	/**
	 * 将对应Court实例存入持久层
	 * @param courtType
	 * @return 存入数据库后，对应的id
	 */
	Integer save(CourtType courtType);
	
	/**
	 * 修改对应的持久化实例
	 * @param courtType
	 */
	void update(CourtType courtType);
	
	/**
	 * 删除对应的持久化实例
	 * @param court
	 */
	void delete(CourtType courtType);
	
	/**
	 * 删除对应id的持久化实例
	 * @param id
	 */
	void delete(Integer id);
	
	/**
	 * 获取所有场地
	 * @return 所有场地
	 */
	List<CourtType> findAll();
	
	/**
	 * 返回指定比赛场地
	 * @param matchType 比赛类型
	 * @return 返回所有该比赛场地
	 */
	List<CourtType> findByMatchType(MatchType matchType);
}
