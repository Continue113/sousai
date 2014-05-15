package org.sousai.vo;

import org.sousai.domain.Region;

import java.io.Serializable;

public class RegionBean implements Serializable
{
	private static final long serialVersionUID = -8689960148505070757L;
	private Integer id;
	private String code;
	private String name;
	private Integer parentId;
	private Integer level;
	private String nameEn;
	private String nameEnSt;
	private Integer order;
	
	//默认构造器
	RegionBean()
	{
	}
	
	//初始化所有参数的构造器
	RegionBean(Integer id, String code, String name, Integer parentId,
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
	
	//由Region转化为RegionBean
	RegionBean(Region region)
	{
		this.id = region.getId();
		this.code = region.getCode();
		this.name = region.getName();
		this.parentId = region.getParentId();
		this.level = region.getLevel();
		this.nameEn = region.getNameEn();
		this.nameEnSt = region.getNameEnSt();
		this.order = region.getOrder();
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
