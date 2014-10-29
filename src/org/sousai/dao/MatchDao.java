package org.sousai.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.sousai.domain.*;

public interface MatchDao {

	Match get(Integer id);

	Integer save(Match match);

	void update(Match match);

	void delete(Match match);

	void delete(Integer id);

	List<Match> findAll();

	List<Match> findByUser(User user);

	List<Match> findByUserId(Integer userId);

	List<Match> findByMatchType(MatchType matchType);

	List<Match> findByMatchTypeName(String matchTypeName);

	List<Match> findByMatchClass(MatchClass matchClass);

	List<Match> findByMatchClassId(Integer matchClassId);

	List<Match> findByMarkingUserId(Integer userId);

	/**
	 * 根据可选参数，从数据库返回比赛。
	 * @param dayOfWeek
	 *            其中的int元素1为周日，2为周一，…，7为周六。若不使用此参数可传递null
	 * @param state
	 *            0为报名中，1为比赛中，2为已结束。若不使用此参数，传递-1
	 * @param date
	 *            此处应传递当前日期。若state为-1，此处为null
	 * @param regionId
	 *            地点id。若不使用此参数，传递-1
	 * @return		符合参数要求的所有比赛
	 */
	List<Match> findByParms(int[] dayOfWeek, int state, Date date,
			Integer regionId);
	/**
	 * 统计用户发布的每种比赛的数量
	 * @param userId	用户标识
	 * @return
	 */
	Map<String, Integer> getEachMatchCount(Integer userId);
}
