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
}
