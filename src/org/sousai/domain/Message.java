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
	private User user;
	private Court court;
	private Timestamp time;
	private String mesg;
	private char show;
	
	//默认构造器
	Message()
	{
	}
	
	//初始化所有参数的构造器
	Message(Long id, Long parentId, User user,
			Court court, Timestamp time, String mesg,
			char show)
	{
		this.id = id;
		this.parentId = parentId;
		this.user = user;
		this.court = court;
		this.time = time;
		this.mesg = mesg;
		this.show = show;
	}
	
	//id属性的setter和getter
	public void setId(Long id)
	{
		this.id = id;
	}
	public Long getId()
	{
		return this.id;
	}

	//parentId属性的setter和getter
	public void setParentId(Long parentId)
	{
		this.parentId = parentId;
	}
	public Long getParentId()
	{
		return this.parentId;
	}
	
	//user属性的setter和getter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}
	
	//court属性的setter和getter
	public void setCourt(Court court)
	{
		this.court = court;
	}
	public Court getCourt()
	{
		return this.court;
	}
	
	//time属性的setter和getter
	public void setTime(Timestamp time)
	{
		this.time = time;
	}
	public Timestamp getTime()
	{
		return this.time;
	}
	
	//mesg属性的setter和getter
	public void setMesg(String mesg)
	{
		this.mesg = mesg;
	}
	public String getMesg()
	{
		return this.mesg;
	}
	
	//show属性的setter和getter
	public void setShow(char show)
	{
		this.show = show;
	}
	public char getShow()
	{
		return this.show;
	}
}
