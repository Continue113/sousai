package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class Ip implements Serializable
{
	private static final long serialVersionUID = -2917849380030704034L;
	
	private Long id;
	private String ips;
	private Integer num;
	private User user;
	
	//默认构造器
	Ip()
	{
	}
	
	//初始化所有参数的构造器
	Ip(Long id, String ips, int num, User user)
	{
		this.id = id;
		this.ips = ips;
		this.num = num;
		this.user = user;
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
	
	//ips属性的setter和getter
	public void setIps(String ips)
	{
		this.ips = ips;
	}
	public String getIps()
	{
		return this.ips;
	}
	
	//num属性的setter和getter
	public void setNum(Integer num)
	{
		this.num = num;
	}
	public Integer getNum()
	{
		return this.num;
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

}
