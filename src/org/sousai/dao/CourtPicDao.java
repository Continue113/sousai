package org.sousai.dao;

import java.util.*;

import org.sousai.domain.*;

public interface CourtPicDao 
{
	/**
	 * 根据id标识属性获取对应CourtPic
	 * @param id id标识属性
	 * @return 对应CourtPic
	 */
	CourtPic get(Long id);
	
	/**
	 * 持久化courtPic
	 * @param courPic 
	 * @return 持久化后的ID标识
	 */
	Long save(CourtPic courtPic);
	
	/**
	 * 更新courtPic的信息
	 * @param courtPic 更新后的courtPic
	 */
	void update(CourtPic courtPic);
	
	/**
	 * 删除courtPic在数据库中记录
	 * @param courtPic
	 */
	void delete(CourtPic courtPic);
	
	/**
	 * 删除数据库中指定的记录
	 * @param id 数据库中Id标识
	 */
	void delete(Long id);
	
}
