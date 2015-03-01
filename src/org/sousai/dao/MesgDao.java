package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;
import org.sousai.vo.MessageBean;

public interface MesgDao {
	/**
	 * 根据id标识属性获取Message
	 * 
	 * @param id标识属性
	 * @return 对应Message
	 */
	Message get(Long id);

	/**
	 * 将对应Message实例存入持久层
	 * 
	 * @param message
	 * @return 存入数据库后，对应的id
	 */
	Long save(Message message);

	/**
	 * 修改对应的持久化实例
	 * 
	 * @param message
	 */
	void update(Message message);

	/**
	 * 删除对应的持久化实例
	 * 
	 * @param message
	 */
	void delete(Message message);

	/**
	 * 删除对应id的持久化实例
	 * 
	 * @param id
	 */
	void delete(Long id);

	/**
	 * 获取指定用户的所有留言
	 * 
	 * @param userId
	 *            用户id标识属性
	 * @return 对应用户的所有留言
	 */
	List<Message> getByUserId(Integer userId);

	/**
	 * 获取指定场地的所有留言
	 * 
	 * @param courtId
	 *            场地id标识属性
	 * @param currentPage
	 * @param rows
	 * @return 对应场地中的所有留言
	 */
	List<MessageBean> getByCourtId(Integer courtId, Integer currentPage,
			Integer rows);

	/**
	 * 获取指定评论的所有回复
	 * 
	 * @param parentId
	 *            指定评论的id标识属性
	 * @return 对应评论的所有回复
	 */
	List<Message> getByParentId(Long parentId);

	/**
	 * 获取所有评论及回复
	 * 
	 * @return 所有评论回复
	 */
	List<MessageBean> findAll();

	/**
	 * 根据关键字，查询结果，并分页排序
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
	List<MessageBean> findPagedByKeyValueOrderBy(String[] columns,
			String keyValue, Integer currentPage, Integer rows,
			String orderByCol, Boolean isAsc, Integer selType) throws Exception;

	int countCourt(Integer selType);

	void deleteMesgs(Long[] courtIds) throws Exception;
}
