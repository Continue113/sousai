package org.sousai.domain;


import java.util.Date;
import java.io.Serializable;

import org.sousai.tools.CommonUtils;

public class Message implements Serializable
{
	private static final long serialVersionUID = 7388668113838768234L;
	
	private Long id;
	private Long parentId;
	private Long rootId;
	private Integer userId;
	private Integer courtId;
	private Date time;
	private String mesg;
	private String userName;
	private Integer state;
	
	//默认构造器
	Message()
	{
	}
	
	//初始化所有参数的构造器
	Message(Long id, Long parentId, Long rootId, Integer userId,
			Integer courtId, Date time, String mesg,
			String userName, Integer state)
	{
		this.id = id;
		this.parentId = parentId;
		this.rootId = rootId;
		this.userId = userId;
		this.courtId = courtId;
		this.time = time;
		this.mesg = mesg;
		this.userName = userName;
		this.state = state;
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
	 * @return the rootId
	 */
	public Long getRootId() {
		return rootId;
	}

	/**
	 * @param rootId the rootId to set
	 */
	public void setRootId(Long rootId) {
		this.rootId = rootId;
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
	public Date getTime() {
		return time;
	}

	/**
	 * @param time the time to set
	 */
	public void setTime(Object time) {
		try {
			if (time instanceof Date) {
				this.time = (Date) time;
			} else if (time instanceof String) {
				this.time = CommonUtils.ParseDateParam(((String) time),
						null);
			} else if (time instanceof String[]) {
				this.time = CommonUtils.ParseDateParam(
						((String[]) time)[0], null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the mesg
	 */
	public String getMesg() {
		return mesg;
	}

	/**
	 * @param mesg the mesg to set
	 */
	public void setMesg(String mesg) {
		this.mesg = mesg;
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
	 * @return the state
	 */
	public Integer getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(Integer state) {
		this.state = state;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
