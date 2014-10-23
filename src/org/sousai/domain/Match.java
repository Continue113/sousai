package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class Match implements Serializable{

	private static final long serialVersionUID = -2347973669337577325L;
	
	private Long id;	//数据库自添加，不用传递给后台
	private String name;	
	private String type;
	private Date beginTime;
	private Date endTime;
	private Long courtId;	//可传可不传
	private String rule;	//可传可不传
	private Timestamp relTime;
	private char verify;
	private String score;	//可传可不传
	private Long userId;	//可传可不传
	
	//默认构造函数
	public Match()
	{
		
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
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
	public Long getCourtId() {
		return courtId;
	}

	/**
	 * @param courtId the courtId to set
	 */
	public void setCourtId(Long courtId) {
		this.courtId = courtId;
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
	public Timestamp getRelTime() {
		return relTime;
	}

	/**
	 * @param relTime the relTime to set
	 */
	public void setRelTime(Timestamp relTime) {
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
	public Long getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
