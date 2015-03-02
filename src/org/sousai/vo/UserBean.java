package org.sousai.vo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.sousai.domain.User;
import org.sousai.tools.CommonUtils;

/**
 * Description: <br/>
 * UserBean is a VO of the object in table users
 * 
 * <br/>
 * Copyright (C), 2014-2024, Myic
 * 
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public class UserBean implements Serializable {
	private static final long serialVersionUID = -5031624436228209839L;
	private Integer userId;
	private String userName;
	private String userPwd;
	private String userEmail;
	private char userType;
	private String userPicId;
	private String userRegTime;
	private String userLastLogTime;
	private Integer userLastRegionId;

	// Ĭ�Ϲ�����
	public UserBean() {
	}

	// ��ʼ���������ԵĹ�����
	public UserBean(Integer userId, String userName, String userPwd,
			String userEmail, char userType, String userPicId,
			Date userRegTime, Date userLastLogTime, Integer userLastRegionId) throws Exception {
		this.setUserId(userId);
		this.setUserName(userName);
		this.setUserPwd(userPwd);
		this.setUserEmail(userEmail);
		this.setUserType(userType);
		this.setUserPicId(userPicId);
		this.userRegTime = CommonUtils.DateToString(userRegTime, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.userLastLogTime = CommonUtils.DateToString(userLastLogTime, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.setUserLastRegionId(userLastRegionId);
	}

	public UserBean(Integer userId, String userName, String userPwd,
			String userEmail, char userType) {
		this.setUserId(userId);
		this.setUserName(userName);
		this.setUserPwd(userPwd);
		this.setUserEmail(userEmail);
		this.setUserType(userType);
	}

	public UserBean(Integer userId, String userName, String userPwd, String userEmail,
			char userType, Date userRegTime, Date userLastLogTime) throws Exception {
		this.userId = userId;
		this.userName = userName;
		this.userPwd = userPwd;
		this.userRegTime = CommonUtils.DateToString(userRegTime, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.userLastLogTime = CommonUtils.DateToString(userLastLogTime, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.userEmail = userEmail;
		this.userType = userType;
	}

	public UserBean(User user) throws Exception {
		this.userId = user.getId();
		this.userName = user.getName();
		this.userEmail = user.getEmail();
		this.userLastLogTime = CommonUtils.DateToString(user.getLastLogTime(), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.userPicId = user.getPicId();
		this.userPwd = user.getPwd();
		this.userRegTime = CommonUtils.DateToString(user.getRegTime(), new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.userLastRegionId = user.getLastRegionId();
		this.userType = user.getType();
	}

	// userId ��setter��getter
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Integer getUserId() {
		return this.userId;
	}

	// userName ��setter��getter
	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserName() {
		return this.userName;
	}

	// userPwd ��setter��getter
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserPwd() {
		return this.userPwd;
	}

	// userEmail ��setter��getter
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	// userType ��setter��getter
	public void setUserType(char userType) {
		this.userType = userType;
	}

	public char getUserType() {
		return this.userType;
	}

	// userPicId ��setter��getter
	public void setUserPicId(String userPicId) {
		this.userPicId = userPicId;
	}

	public String getUserPicId() {
		return this.userPicId;
	}

	// userRegTime ��setter��getter
	public void setUserRegTime(String userRegTime) {
		this.userRegTime = userRegTime;
	}

	public String getUserRegTime() {
		return this.userRegTime;
	}

	// userLastLogTime ��setter��getter
	public void setUserLastLogTime(String userLastLogTime) {
		this.userLastLogTime = userLastLogTime;
	}

	public String getUserLastLogTime() {
		return this.userLastLogTime;
	}

	/**
	 * @return the userLastRegionId
	 */
	public Integer getUserLastRegionId() {
		return userLastRegionId;
	}

	/**
	 * @param userLastRegionId the userLastRegionId to set
	 */
	public void setUserLastRegionId(Integer userLastRegionId) {
		this.userLastRegionId = userLastRegionId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	
	
}
