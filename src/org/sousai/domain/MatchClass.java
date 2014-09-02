package org.sousai.domain;

import java.io.Serializable;

public class MatchClass implements Serializable{

	private static final long serialVersionUID = 6284489754628410943L;

	private Integer id;
	private String name;
	//默认构造函数
	MatchClass()
	{
		
	}
	//带参数的构造函数
	MatchClass(Integer id, String name)
	{
		this.id = id;
		this.name = name;
	}
	
	//id的getter和setter
	public Integer getId()
	{
		return this.id;
	}
	public void setId(Integer id)
	{
		this.id = id;
	}
	
	//name的getter和setter
	public String getName()
	{
		return this.name;
	}
	public void setName(String name)
	{
		this.name = name;
	}
}
