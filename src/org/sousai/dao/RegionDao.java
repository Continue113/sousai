package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;

public interface RegionDao 
{
	/**
	 * 根据ID标识获取对应Region
	 * @param id 标识
	 * @return 对应Region
	 */
	Region get(Integer id);
	
	/**
	 * 保存持久对象
	 * @param region 需要保存的持久对象
	 * @return 持久对象对应的id
	 */
	Integer save(Region region);
	
	/**
	 * 更新持久对象
	 * @param region 更新之后的持久对象
	 */
	void update(Region region);
	
	/**
	 * 删除持久对象
	 * @param region 需要删除的持久对象
	 */
	void delete(Region region);
	
	/**
	 * 删除持久对象
	 * @param id 需要删除的持久对象的ID标识
	 */
	void delete(Integer id);
	
	/**
	 * 根据地区名字，获得地区数据
	 * @param name 地区名字
	 * @param order 顺序，若有同名的地区，会根据order的值作出选择，order最小值为0
	 * @return 地区数据
	 */
	Region getByName(String name, int order);
	
	/**
	 * 根据地区名字与级别，获得地区数据
	 * @param name 地区名字
	 * @param level 地区级别
	 * @return 地区数据
	 */
	Region getByNameAndLevel(String name, Integer level, int order);
	
	/**
	 * 根据地区ID标识，获取其数据库中下1级地区
	 * @param id 地区标识
	 * @return 所有下1级地区
	 */
	List<Region> getSon(Integer id);
	
	/**
	 * 根据地区名字，获取其数据库中下1级地区
	 * @param name 地区名字
	 * @return 所有下1级地区
	 */
	List<Region> getSonByName(String name, int order);
	
	/**
	 * 根据地区名字与级别，获得数据库中下1级地区
	 * @param name 地区名字
	 * @param level 地区级别
	 * @return 所有下1级地区
	 */
	List<Region> getSonByNameAndLevel(String name, Integer level, int order);
	
}
