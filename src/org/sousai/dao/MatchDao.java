package org.sousai.dao;

import java.util.Date;
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
	
	List<Match> findByMarkingUserId(Integer userId);
	/**
	 * 
	 * @param dayOfWeek		1为周日,2为周一，…，7为周六	
	 * @param state		0为
	 * @param date	比赛开始时间？
	 * @param regionId	地点id
	 * @return
	 */
	List<Match> findByParms(int[] dayOfWeek, int state, Date date, Integer regionId);
}
