package org.sousai.vo;

import java.io.Serializable;
import java.util.Date;

public class MatchBean implements Serializable{

	private static final long serialVersionUID = 9148543628409192006L;

	private Integer id; // 数据库自添加，不用传递给后台
	private String name;
	private String type;
	private Date beginTime;
	private Date endTime;
	private Integer courtId; // 可传可不传
	private String courtName;
	private String rule; // 可传可不传
	private Date relTime;
	private char verify;
	private String score; // 可传可不传
	private Integer userId; // 可传可不传
	private String userName;
	
	
	
	public MatchBean(Integer id, String name, String type, Date beginTime,
			Date endTime, Integer courtId, String courtName, String rule,
			Date relTime, char verify, String score, Integer userId,
			String userName) {
		super();
		this.id = id;
		this.name = name;
		this.type = type;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.courtId = courtId;
		this.courtName = courtName;
		this.rule = rule;
		this.relTime = relTime;
		this.verify = verify;
		this.score = score;
		this.userId = userId;
		this.userName = userName;
	}
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
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
	 * @param name the name to set
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
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	/**
	 * @return the beginTime
	 */
	public Date getBeginTime() {
		return beginTime;
	}
	/**
	 * @param beginTime the beginTime to set
	 */
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}
	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}
	/**
	 * @param endTime the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	/**
	 * @return the courtId
	 */
	public Integer getCourtId() {
		return courtId;
	}
	/**
	 * @param courtId the courtId to set
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
	 * @param courtName the courtName to set
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
	 * @param rule the rule to set
	 */
	public void setRule(String rule) {
		this.rule = rule;
	}
	/**
	 * @return the relTime
	 */
	public Date getRelTime() {
		return relTime;
	}
	/**
	 * @param relTime the relTime to set
	 */
	public void setRelTime(Date relTime) {
		this.relTime = relTime;
	}
	/**
	 * @return the verify
	 */
	public char getVerify() {
		return verify;
	}
	/**
	 * @param verify the verify to set
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
	 * @param score the score to set
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
	 * @param userId the userId to set
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
	 * @param userName the userName to set
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
	
}
