package org.sousai.domain;

import org.sousai.domain.*;

import java.util.*;
import java.sql.Timestamp;
import java.io.Serializable;

public class Message implements Serializable
{
	private static final long serialVersionUID = 7388668113838768234L;
	
	private Long id;
	private Long parentId;
	private Integer userId;
	private Integer courtId;
	private Timestamp time;
	private String mesg;
	private String userName;
	
	//默认构造器
	Message()
	{
	}
	
	//初始化所有参数的构造器
	Message(Long id, Long parentId, Integer userId,
			Integer courtId, Timestamp time, String mesg,
			String userName)
	{
		this.id = id;
		this.parentId = parentId;
		this.userId = userId;
		this.courtId = courtId;
		this.time = time;
		this.mesg = mesg;
		this.userName = userName;
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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
