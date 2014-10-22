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

	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the parentId
	 */
	public Integer getParentId() {
		return parentId;
	}

	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(Integer parentId) {
		this.parentId = parentId;
	}

	/**
	 * @return the level
	 */
	public Integer getLevel() {
		return level;
	}

	/**
	 * @param level the level to set
	 */
	public void setLevel(Integer level) {
		this.level = level;
	}

	/**
	 * @return the nameEn
	 */
	public String getNameEn() {
		return nameEn;
	}

	/**
	 * @param nameEn the nameEn to set
	 */
	public void setNameEn(String nameEn) {
		this.nameEn = nameEn;
	}

	/**
	 * @return the nameEnSt
	 */
	public String getNameEnSt() {
		return nameEnSt;
	}

	/**
	 * @param nameEnSt the nameEnSt to set
	 */
	public void setNameEnSt(String nameEnSt) {
		this.nameEnSt = nameEnSt;
	}

	/**
	 * @return the order
	 */
	public Integer getOrder() {
		return order;
	}

	/**
	 * @param order the order to set
	 */
	public void setOrder(Integer order) {
		this.order = order;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
