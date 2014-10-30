package org.sousai.dao;

import org.sousai.domain.UserMark;

public interface UserMarkDao {

	UserMark get(Integer id);
	
	Integer save(UserMark userMark);
	
	void update(UserMark userMark);
	
	void delete(UserMark userMark);
	
	void delete(Integer id);
}
