package org.sousai.vo;

import java.io.Serializable;
import java.sql.Timestamp;

/**
 * Description:
 * <br/> UserBean is a VO of the object in table users
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public class UserBean implements Serializable 
{
	private static final long serialVersionUID = -5031624436228209839L;
	private Long userId;
	private String userName;
	private String userPwd;
	private String userEmail;
	private char userType;
	private String userPicId;
	private Timestamp userRegTime;
	private Timestamp userLastLogTime;
	
	//Ĭ�Ϲ�����
	public UserBean()
	{
	}
	
	//��ʼ���������ԵĹ�����
	public UserBean(Long userId, String userName, String userPwd,
			String userEmail, char userType, String userPicId,
			Timestamp userRegTime, Timestamp userLastLogTime)
	{
		this.setUserId(userId);
		this.setUserName(userName);
		this.setUserPwd(userPwd);
		this.setUserEmail(userEmail);
		this.setUserType(userType);
		this.setUserPicId(userPicId);
		this.setUserRegTime(userRegTime);
		this.setUserType(userType);
	}
	
	//userId ��setter��getter
	public void setUserId(long userId)
	{
		this.userId = userId;
	}
	public Long getUserId()
	{
		return this.userId;
	}
	
	//userName ��setter��getter
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getUserName()
	{
		return this.userName;
	}
	
	//userPwd ��setter��getter
	public void setUserPwd(String userPwd)
	{
		this.userPwd = userPwd;
	}
	public String getUserPwd()
	{
		return this.userPwd;
	}
	
	//userEmail ��setter��getter
	public void setUserEmail(String userEmail)
	{
		this.userEmail = userEmail;
	}
	public String getUserEmail()
	{
		return this.userEmail;
	}
	
	//userType ��setter��getter
	public void setUserType(char userType)
	{
		this.userType = userType;
	}
	public char getUserType()
	{
		return this.userType;
	}
	
	//userPicId ��setter��getter
	public void setUserPicId(String userPicId)
	{
		this.userPicId = userPicId;
	}
	public String getUserPicId()
	{
		return this.userPicId;
	}
	
	//userRegTime ��setter��getter
	public void setUserRegTime(Timestamp userRegTime)
	{
		this.userRegTime = userRegTime;
	}
	public Timestamp getUserRegTime()
	{
		return this.userRegTime;
	}
	
	//userLastLogTime ��setter��getter
	public void setUserLastLogTime(Timestamp userLastLogTime)
	{
		this.userLastLogTime = userLastLogTime;
	}
	public Timestamp getUserLastLogTime()
	{
		return this.userLastLogTime;
	}
}
