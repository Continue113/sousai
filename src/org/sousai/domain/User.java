package org.sousai.domain;

import java.io.Serializable;
//import java.sql.Date;
import java.sql.Timestamp;
import java.util.*;

public class User implements Serializable{
	private static final long serialVersionUID = 48L;
	//锟斤拷锟斤拷
	private Long id;
	private String name;
	private String pwd;
	private String email;
	private char type;
	private String picId;
	private Timestamp regTime;
	private Timestamp lastLogTime;
	private Set<Court> court = new HashSet<Court>();
	//锟睫诧拷锟斤拷墓锟斤拷锟斤拷锟�	
	public User(){
	}
	//锟斤拷始锟斤拷全锟斤拷锟斤拷锟皆的癸拷锟斤拷锟斤拷
	public User(Long id, String name, String pwd, String email,
			char type, String picId)//, Timestamp regTime, Timestamp lastLogTime)
	{
		this.id = id;
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.type = type;
		this.picId = picId;
//		this.regTime = regTime;
//		this.lastLogTime = lastLogTime;
	}
	
	//
	public User(String name, String pwd, String email,	char type, String picId)//, Timestamp regTime, Timestamp lastLogTime)
	{
		this.name = name;
		this.pwd = pwd;
		this.email = email;
		this.type = type;
		this.picId = picId;
		//this.regTime = regTime;
		//this.lastLogTime = lastLogTime;
	}
	
	//id锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public void setId(Long id)
	{
		this.id = id;
	}
	public Long getId()
	{
		return this.id;
	}
	//name锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}
	//pwd锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public void setPwd(String pwd)
	{
		this.pwd = pwd;
	}
	public String getPwd()
	{
		return this.pwd;
	}
	//email锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public void setEmail(String email)
	{
		this.email = email;
	}
	public String getEmail()
	{
		return this.email;
	}
	//type锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public void setType(char type)
	{
		this.type = type;
	}
	public char getType()
	{
		return this.type;
	}
	//picId锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public String getPicId()
	{
		return this.picId;
	}
	
	//regTime锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public Timestamp getRegTime()
	{
		return this.regTime;
	}
	
	//lastLogTime锟斤拷锟皆碉拷setter锟斤拷getter锟斤拷锟斤拷
	public Timestamp getLastLogTime()
	{
		return this.lastLogTime;
	}
	
	//Court属性的setter和getter
	public void setCourt(Set<Court> court)
	{
		this.court = court;
	}
	public Set<Court> getCourt()
	{
		/*if(this.court != null)
		{
			System.out.println("Set size = " + court.size());
		}*/
		return this.court;
	}
	//锟斤拷写equals()锟斤拷锟斤拷锟斤拷
}
