package org.sousai.dao;

import java.util.List;

import org.sousai.domain.*;

public interface MatchTypeDao 
{

	/**
	 * 获取对应id标识的MatchType
	 * @param id MatchType的标识属性值
	 * @return id对应的持久层实例
	 */
	MatchType get(Integer id);
	
	/**
	 * 将对应MatchType实例存入持久层
	 * @param matchType
	 * @return 存入数据库后，对应的id
	 */
	Integer save(MatchType matchType);
	
	/**
	 * 修改对应的持久化实例
	 * @param matchType
	 */
	void update(MatchType matchType);
	
	/**
	 * 删除对应的持久化实例
	 * @param matchType
	 */
	void delete(MatchType matchType);
	
	/**
	 * 删除对应id的持久化实例
	 * @param id
	 */
	void delete(Integer id);
	
	/**
	 * 获取所有场地
	 * @param mcId 大类型Id
	 * @param id 不显示的比赛类型
	 * @return 所有比赛类型
	 */
	List<MatchType> findAllByMcIdExcept(Integer mcId, Integer id);
	
	/**
	 * 获取除开对应id的所有比赛类型
	 * @param id 不显示的比赛类型
	 * @return 除开id对应比赛类型的其他比赛类型
	 */
	List<MatchType> findAllExcept(Integer id);

}