package org.sousai.vo;

import org.sousai.domain.Region;

import java.io.Serializable;

public class RegionBean implements Serializable
{
	private static final long serialVersionUID = -8689960148505070757L;
	private Integer pId;	//省id
	private Integer cId;	//市id
	private String code;	//地区码
	private String pName;	//省名
	private String cName;	//市名
	
	//默认构造器
	public RegionBean()
	{
	}

	public RegionBean(Integer pId, Integer cId, String code, String pName,
			String cName) {
		super();
		this.pId = pId;
		this.cId = cId;
		this.code = code;
		this.pName = pName;
		this.cName = cName;
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
