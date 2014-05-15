package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class CourtType implements Serializable
{
	private static final long serialVersionUID = -31205406831690550L;
	
	private Integer id;
	private String name;
	private Integer matchId;
	
	//默认构造器
	CourtType()
	{
	}
	
	//初始化全部参数的构造器
	CourtType(Integer id, String name, Integer matchId)
	{
		this.id = id;
		this.name = name;
		this.matchId = matchId;
	}

	//id属性的setter和getter
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getId()
	{
		return this.id;
	}
	
	//name属性的setter和getter
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}
	
	//matchId属性的setter和getter
	public void setMatchId(Integer matchId)
	{
		this.matchId = matchId;
	}
	public Integer getMatchId()
	{
		return this.matchId;
	}
}
