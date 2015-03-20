package org.sousai.vo;

import org.sousai.domain.Region;

import java.io.Serializable;

public class RegionBean implements Serializable
{
	private static final long serialVersionUID = -8689960148505070757L;
	private Integer pId;	//省id
	private Integer cId;	//市id
	private Integer rId;	//显示的id
	private String code;	//地区码
	private String pName;	//省名
	private String cName;	//市名
	private String rName;	//显示的名字
	
	//默认构造器
	public RegionBean()
	{
	}

	public RegionBean(Integer pId, Integer cId, Integer rId, String code, String pName,
			String cName, String rName) {
		super();
		this.pId = pId;
		this.cId = cId;
		this.rId = rId;
		this.code = code;
		this.pName = pName;
		this.cName = cName;
		this.rName = rName;
	}

	
	/**
	 * @return the rId
	 */
	public Integer getRId() {
		return rId;
	}

	/**
	 * @param rId the rId to set
	 */
	public void setRId(Integer rId) {
		this.rId = rId;
	}

	/**
	 * @return the rName
	 */
	public String getRName() {
		return rName;
	}

	/**
	 * @param rName the rName to set
	 */
	public void setRName(String rName) {
		this.rName = rName;
	}

	/**
	 * @return the pId
	 */
	public Integer getPId() {
		return pId;
	}

	/**
	 * @param pId the pId to set
	 */
	public void setPId(Integer pId) {
		this.pId = pId;
	}

	/**
	 * @return the cId
	 */
	public Integer getCId() {
		return cId;
	}

	/**
	 * @param cId the cId to set
	 */
	public void setCId(Integer cId) {
		this.cId = cId;
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
	 * @return the pName
	 */
	public String getPName() {
		return pName;
	}

	/**
	 * @param pName the pName to set
	 */
	public void setPName(String pName) {
		this.pName = pName;
	}

	/**
	 * @return the cName
	 */
	public String getCName() {
		return cName;
	}

	/**
	 * @param cName the cName to set
	 */
	public void setCName(String cName) {
		this.cName = cName;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
