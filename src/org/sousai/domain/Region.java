package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class Region implements Serializable
{
	private static final long serialVersionUID = 2374369166566096008L;
	
	//数据库主键
	private Integer id;
	//地区编码
	private String code;
	//地区名字
	private String name;
	//上级地区主键
	private Integer parentId;
	//地区等级
	private Integer level;
	//地区英文名
	private String nameEn;
	//地区英文缩写
	private String nameEnSt;
	//顺序号，用以区别同名地区
	private Integer order;
	
	//默认构造器
	Region()
	{
	}
	
	//初始化所有参数的构造器
	Region(Integer id, String code, String name, Integer parentId,
			Integer level, String nameEn, String nameEnSt, Integer order)
	{
		this.id = id;
		this.code =code;
		this.name = name;
		this.parentId = parentId;
		this.level = level;
		this.nameEn = nameEn;
		this.nameEnSt = nameEnSt;
		this.order = order;
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
	
	//code属性的setter和getter
	public void setCode(String code)
	{
		this.code = code;
	}
	public String getCode()
	{
		return this.code;
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
	
	//parentId属性的setter和getter
	public void setParentId(Integer parentId)
	{
		this.parentId = parentId;
	}
	public Integer getParentId()
	{
		return this.parentId;
	}
	
	//level属性的setter和getter
	public void setLevel(Integer level)
	{
		this.level = level;
	}
	public Integer getLevel()
	{
		return this.level;
	}
	
	//nameEn属性的setter和getter
	public void setNameEn(String nameEn)
	{
		this.nameEn = nameEn;
	}
	public String getNameEn()
	{
		return this.nameEn;
	}
	
	//nameEnSt属性的setter和getter
	public void setNameEnSt(String nameEnSt)
	{
		this.nameEnSt = nameEnSt;
	}
	public String getNameEnSt()
	{
		return this.nameEnSt;
	}
	
	//order属性的setter和getter
	public void setOrder(Integer order)
	{
		this.order = order;
	}
	public Integer getOrder()
	{
		return this.order;
	}
}
