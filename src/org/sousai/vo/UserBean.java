package org.sousai.vo;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;

import org.sousai.domain.User;

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
	private Date userRegTime;
	private Date userLastLogTime;

	// Ĭ�Ϲ�����
	public UserBean() {
	}

	// ��ʼ���������ԵĹ�����
	public UserBean(Integer userId, String userName, String userPwd,
			String userEmail, char userType, String userPicId,
			Timestamp userRegTime, Timestamp userLastLogTime) {
		this.setUserId(userId);
		this.setUserName(userName);
		this.setUserPwd(userPwd);
		this.setUserEmail(userEmail);
		this.setUserType(userType);
		this.setUserPicId(userPicId);
		this.setUserRegTime(userRegTime);
		this.setUserLastLogTime(userLastLogTime);
	}

	public UserBean(Integer userId, String userName, String userPwd,
			String userEmail, char userType) {
		this.setUserId(userId);
		this.setUserName(userName);
		this.setUserPwd(userPwd);
		this.setUserEmail(userEmail);
		this.setUserType(userType);
	}

	public UserBean(Integer userId, String userName, String userEmail,
			char userType, Date userRegTime, Date userLastLogTime) {
		this.userId = userId;
		this.userName = userName;
		this.userLastLogTime = userLastLogTime;
		this.userEmail = userEmail;
		this.userType = userType;
		this.userRegTime = userRegTime;
	}

	public UserBean(User user) {
		this.userId = user.getId();
		this.userName = user.getName();
		this.userEmail = user.getEmail();
		this.userLastLogTime = user.getLastLogTime();
		this.userPicId = user.getPicId();
		this.userPwd = user.getPwd();
		this.userRegTime = user.getRegTime();
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
	public void setUserRegTime(Date userRegTime) {
		this.userRegTime = userRegTime;
	}

	public Date getUserRegTime() {
		return this.userRegTime;
	}

	// userLastLogTime ��setter��getter
	public void setUserLastLogTime(Date userLastLogTime) {
		this.userLastLogTime = userLastLogTime;
	}

	public Date getUserLastLogTime() {
		return this.userLastLogTime;
	}
}
