package org.sousai.domain;

import java.io.Serializable;
import java.sql.Blob;

public class UserPic implements Serializable
{
	private static final long serialVersionUID = 9093686341569250373L;
	private Long id;
	private String path;
	private Blob pic;
	
	//默认构造器
	UserPic()
	{		
	}
	
	//初始化所有参数的构造器
	UserPic(Long id, String path, Blob pic)
	{
		this.id = id;
		this.path = path;
		this.pic = pic;
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
	
	//path属性的setter和getter
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getPath()
	{
		return this.path;
	}
	
	//pic属性的setter和getter
	public void setPic(Blob pic)
	{
		this.pic = pic;
	}
	public Blob getPic()
	{
		return pic;
	}
}