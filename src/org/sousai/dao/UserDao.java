package org.sousai.dao;

import java.util.*;
import org.sousai.domain.*;
public interface UserDao {
	/**
	 * 根据标识属性来加载User实例
	 * @param id
	 * @return 指定标识属性对应的User实例
	 */
	User get(Integer id);
	
	/**
	 * 持久化指定的User实例 
	 * @param user
	 * @return User实例被持久化后的标识属性值
	 */
	Integer save(User user);
	
	/**
	 * 修改指定的User实例
	 * @param user 需要被修改的User实例
	 */
	void update(User user);
	
	/**
	 * 删除指定的User实例
	 * @param user 需要被删除的User实例
	 */
	void delete(User user);
	
	/**
	 * 根据表示属性删除User实例
	 * @param id 需要被删除的User实例的标识属性值
	 */
	void delete(Integer id);
	
	/**
	 * 查询全部的User实例
	 * @return 数据库中全部的User实例
	 */
	List<User> findAll();
	
	/**
	 * 查询用户名和密码匹配的User实例
	 * @param user
	 * @return 用户名和密码都匹配的User实例
	 */
	List<User> findByNameAndPass(User user);
	
	/**
	 * 根据用户名查找用户
	 * @param name 用户的名字
	 * @return 名字对应的用户
	 */
	User findByName(String name);
	


}
