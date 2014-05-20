package org.sousai.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.Blob;
import java.util.*;

public class CourtPic implements Serializable
{
	private static final long serialVersionUID = -5076690952824550177L;
	private Long id;
	private String path;
	private Blob pic;
	private Court court;
	
	//默认构造器
	public CourtPic()
	{		
	}
	
	//初始化所有参数的构造器
	public CourtPic(Long id, String path, Blob pic, Court court)
	{
		this.id = id;
		this.path = path;
		this.pic = pic;
		this.court = court;
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
	
	//court属性的setter和getter
	public void setCourt(Court court)
	{
		this.court = court;
	}
	public Court getCourt()
	{
		return this.court;
	}
}
