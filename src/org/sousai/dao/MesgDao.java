package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;

public interface MesgDao
{
	/**
	 * 根据id标识属性获取Message
	 * @param id标识属性
	 * @return 对应Message
	 */
	Message get(Long id);
	
	/**
	 * 将对应Message实例存入持久层
	 * @param message
	 * @return 存入数据库后，对应的id
	 */
	Long save(Message message);
	
	/**
	 * 修改对应的持久化实例
	 * @param message
	 */
	void update(Message message);
	
	/**
	 * 删除对应的持久化实例
	 * @param message
	 */
	void delete(Message message);
	
	/**
	 * 删除对应id的持久化实例
	 * @param id
	 */
	void delete(Long id);
	
	/**
	 * 获取指定用户的所有留言
	 * @param userId 用户id标识属性
	 * @return 对应用户的所有留言
	 */
	List<Message> getByUserId(Long userId);
	
	/**
	 * 获取指定场地的所有留言
	 * @param courtId 场地id标识属性
	 * @return 对应场地中的所有留言
	 */
	List<Message> getByCourtId(Long courtId);
	
	/**
	 * 获取指定评论的所有回复
	 * @param parentId 指定评论的id标识属性
	 * @return 对应评论的所有回复
	 */
	List<Message> getByParentId(Long parentId);
	
	
}
