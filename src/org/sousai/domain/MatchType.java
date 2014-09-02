package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class MatchType implements Serializable
{
	private static final long serialVersionUID = -804913859627368898L;

	private Integer id;
	private String name;
	private Integer mcId;
	
	//默认构造函数
	public MatchType()
	{
		
	}
	//包含所有初始化的构造函数
	public MatchType(Integer id, String name, Integer mcId)
	{
		this.id = id;
		this.name = name;
		this.mcId = mcId;
	}
	
	//id的setter和getter
	public void setId(Integer id)
	{
		this.id = id;
	}
	public Integer getId()
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
	
	//mcId的setter和getter
	public void setMcId(Integer mcId)
	{
		this.mcId = mcId;
	}
	public Integer getMcId()
	{
		return this.mcId;
	}
}
