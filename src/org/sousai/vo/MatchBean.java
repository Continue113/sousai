package org.sousai.vo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import org.sousai.tools.CommonUtils;

public class MatchBean implements Serializable {

	private static final long serialVersionUID = 9148543628409192006L;

	private Integer id; // 数据库自添加，不用传递给后台
	private String name;
	private String type;
	private String beginTime;
	private String endTime;
	private Integer courtId; // 可传可不传
	private String courtName;
	private String rule; // 可传可不传
	private String relTime;
	private char verify;
	private String score; // 可传可不传
	private Integer userId; // 可传可不传
	private String userName;
	private String region;
	private String state;
	private String beginDayOfWeek;
	private String endDayOfWeek;

	public MatchBean(Integer id, String name, String type, Date beginTime,
			Date endTime, Integer courtId, String courtName, String rule,
			Date relTime, char verify, String score, Integer userId,
			String userName, String region) throws Exception {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.beginTime = CommonUtils.DateToString(beginTime,null);
		this.endTime = CommonUtils.DateToString(endTime,null);;
		this.courtId = courtId;
		this.courtName = courtName;
		this.rule = rule;
		this.relTime = CommonUtils.DateToString(relTime,new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.verify = verify;
		this.score = score;
		this.userId = userId;
		this.userName = userName;
		this.region = region;
		Date now = new Date();
		if (now.compareTo(beginTime) <= 0) {
			this.state = "报名中";
		} else if ((now.compareTo(beginTime) >= 0)
				&& now.compareTo(endTime) <= 0) {
			this.state = "比赛中";
		} else if (now.compareTo(endTime) >= 0) {
			this.state = "已结束";
		}
		SimpleDateFormat dayOfWeekFm = new SimpleDateFormat("EEEE",Locale.CHINA);
		this.beginDayOfWeek = dayOfWeekFm.format(beginTime);
		this.endDayOfWeek = dayOfWeekFm.format(endTime);
	}

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the beginTime
	 */
	public String getBeginTime() {
		return beginTime;
	}

	/**
	 * @param beginTime
	 *            the beginTime to set
	 */
	public void setBeginTime(String beginTime) {
		this.beginTime = beginTime;
	}

	/**
	 * @return the endTime
	 */
	public String getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime
	 *            the endTime to set
	 */
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}

	/**
	 * @return the courtId
	 */
	public Integer getCourtId() {
		return courtId;
	}

	/**
	 * @param courtId
	 *            the courtId to set
	 */
	public void setCourtId(Integer courtId) {
		this.courtId = courtId;
	}

	/**
	 * @return the courtName
	 */
	public String getCourtName() {
		return courtName;
	}

	/**
	 * @param courtName
	 *            the courtName to set
	 */
	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}

	/**
	 * @return the rule
	 */
	public String getRule() {
		return rule;
	}

	/**
	 * @param rule
	 *            the rule to set
	 */
	public void setRule(String rule) {
		this.rule = rule;
	}

	/**
	 * @return the relTime
	 */
	public String getRelTime() {
		return relTime;
	}

	/**
	 * @param relTime
	 *            the relTime to set
	 */
	public void setRelTime(String relTime) {
		this.relTime = relTime;
	}

	/**
	 * @return the verify
	 */
	public char getVerify() {
		return verify;
	}

	/**
	 * @param verify
	 *            the verify to set
	 */
	public void setVerify(char verify) {
		this.verify = verify;
	}

	/**
	 * @return the score
	 */
	public String getScore() {
		return score;
	}

	/**
	 * @param score
	 *            the score to set
	 */
	public void setScore(String score) {
		this.score = score;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName
	 *            the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region
	 *            the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the beginDayOfWeek
	 */
	public String getBeginDayOfWeek() {
		return beginDayOfWeek;
	}

	/**
	 * @param beginDayOfWeek the beginDayOfWeek to set
	 */
	public void setBeginDayOfWeek(String beginDayOfWeek) {
		this.beginDayOfWeek = beginDayOfWeek;
	}

	/**
	 * @return the endDayOfWeek
	 */
	public String getEndDayOfWeek() {
		return endDayOfWeek;
	}

	/**
	 * @param endDayOfWeek the endDayOfWeek to set
	 */
	public void setEndDayOfWeek(String endDayOfWeek) {
		this.endDayOfWeek = endDayOfWeek;
	}

}
