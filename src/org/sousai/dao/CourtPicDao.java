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
}
