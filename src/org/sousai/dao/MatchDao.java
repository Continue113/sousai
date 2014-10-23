package org.sousai.dao;

import java.util.List;

import org.sousai.domain.*;

public interface MatchDao {

	Match get(Long id);
	
	Long save(Match match);
	
	void update(Match match);
	
	void delete(Match match);
	
	void delete(Long id);
	
	List<Match> findAll();
	
	List<Match> findByUser(User user);
	
	List<Match> findByUserId(Integer userId);
	
	List<Match> findByMatchType(MatchType matchType);
	
	List<Match> findByMatchTypeId(String matchTypeName);
	
	List<Match> findByMatchClass(MatchClass matchClass);
	
	List<Match> findByMatchClassId(Integer matchClassId);
}
