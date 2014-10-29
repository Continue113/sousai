package org.sousai.vo;

import java.sql.Timestamp;

public class MessageBean {
	private Long id;
	private Long parentId;
	private Integer userId;
	private Integer courtId;
	private Timestamp time;
	private String userName;
	private String courtName;
	
	public MessageBean(Long id, Long parentId, Integer userId, Integer courtId,
			Timestamp time, String userName, String courtName) {
		super();
		this.id = id;
		this.parentId = parentId;
		this.userId = userId;
		this.courtId = courtId;
		this.time = time;
		this.userName = userName;
		this.courtName = courtName;
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
	 * @return the parentId
	 */
	public Long getParentId() {
		return parentId;
	}
	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(Long parentId) {
		this.parentId = parentId;
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
	 * @return the time
	 */
	public Timestamp getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(Timestamp time) {
		this.time = time;
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
	
}
