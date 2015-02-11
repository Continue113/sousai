package org.sousai.dao;

import java.util.List;

import org.sousai.domain.HotWord;

public interface HotWordDao {

	/**
	 * 获取对应id标识的HotWord
	 * @param id HotWord的标识属性值
	 * @return id对应的持久层实例
	 */
	HotWord get(Integer id);
	
	/**
	 * 将对应HotWord实例存入持久层
	 * @param hotWord
	 * @return 存入数据库后，对应的id
	 * @throws Exception 
	 */
	Integer save(HotWord hotWord) throws Exception;
	
	/**
	 * 修改对应的持久化实例
	 * @param hotWord
	 * @throws Exception 
	 */
	void update(HotWord hotWord) throws Exception;
	
	/**
	 * 删除对应的持久化实例
	 * @param court
	 * @throws Exception 
	 */
	void delete(HotWord hotWord) throws Exception;
	
	/**
	 * 删除对应id的持久化实例
	 * @param id
	 * @throws Exception 
	 */
	void delete(Integer id) throws Exception;
	
	/**
	 * 获取所有HotWord
	 * @return 所有HotWord
	 * @throws Exception 
	 */
	List<HotWord> findAll() throws Exception;
	
}
