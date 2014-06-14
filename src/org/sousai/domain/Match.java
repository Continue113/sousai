package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;

public class Match implements Serializable{

	private static final long serialVersionUID = -2347973669337577325L;
	private Long id;
	private String name;
	private String type;
	private Date beginTime;
	private Date endTime;
	private Court court;
	private String rule;
	private Timestamp relTime;
	private char verify;
	private String score;
	private User user;
	
	//默认构造函数
	public Match()
	{
		
	}
	//初始化全部参数的构造函数
	public Match(Long id, String name, String type, Date beginTime,
			Date endTime, Court court, String rule, Timestamp relTime,
			char verify, String score, User user)
	{
		this.id = id;
		this.name = name;
		this.type = type;
		this.beginTime = beginTime;
		this.endTime = endTime;
		this.court = court;
		this.rule  = rule;
		this.relTime = relTime;
		this.verify = verify;
		this.score = score;
		this.user = user;
	}
	
	//id的setter和getter
	public void setId(Long id)
	{
		this.id = id;
	}
	public Long getId()
	{
		return this.id;
	}
	
	//name的setter和getter
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}
	
	//type的setter和getter
	public void setType(String type)
	{
		this.type = type;
	}
	public String getType()
	{
		return this.type;
	}
	
	//beginTime的setter和getter
	public void setBeginTime(Date beginTime)
	{
		this.beginTime = beginTime;
	}
	public Date getBeginTime()
	{
		return this.beginTime;
	}
	
	//endTime的setter和getter
	public void setEndTime(Date endTime)
	{
		this.endTime = endTime;
	}
	public Date getEndTime()
	{
		return this.endTime;
	}
	
	//court的setter和getter
	public void setCourt(Court court)
	{
		this.court = court;
	}
	public Court getCourt()
	{
		return this.court;
	}
	
	//rule的setter和getter
	public void setRule(String rule)
	{
		this.rule = rule;
	}
	public String getRule()
	{
		return this.rule;
	}
	
	//relTime的setter和getter
	public void setRelTime(Timestamp relTime)
	{
		this.relTime = relTime;
	}
	public Timestamp getRelTime()
	{
		return this.relTime;
	}
	
	//verify的setter和getter
	public void setVerify(char verify)
	{
		this.verify = verify;
	}
	public char getVerify()
	{
		return this.verify;
	}
	
	//score的setter和getter
	public void setScore(String score)
	{
		this.score = score;
	}
	public String getScore()
	{
		return this.score;
	}
	
	//user的setter和getter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}

}
