package org.sousai.dao;

import java.util.List;
import org.sousai.domain.*;


public interface MatchClassDao {

		/**
		 * 获取对应id标识的MatchClass
		 * @param id MatchClass的标识属性值
		 * @return id对应的持久层实例
		 */
		MatchClass get(Integer id);
		
		/**
		 * 将对应MatchClass实例存入持久层
		 * @param MatchClass
		 * @return 存入数据库后，对应的id
		 */
		Integer save(MatchClass MatchClass);
		
		/**
		 * 修改对应的持久化实例
		 * @param MatchClass
		 */
		void update(MatchClass MatchClass);
		
		/**
		 * 删除对应的持久化实例
		 * @param MatchClass
		 */
		void delete(MatchClass MatchClass);
		
		/**
		 * 删除对应id的持久化实例
		 * @param id
		 */
		void delete(Integer id);
		
		/**
		 * 获取所有比赛大类
		 * @return 所有比赛大类
		 */
		List<MatchClass> findAll();
		
		/**
		 * 获取除开对应id的所有比赛大类
		 * @param id 不显示的比赛大类
		 * @return 除开id对应比赛大类的其他比赛大类
		 */
		List<MatchClass> findAllExcept(Integer id);
	

}
