package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class MatchType implements Serializable
{
	private static final long serialVersionUID = -804913859627368898L;

	private Integer id;
	private String name;
	private Integer mcId;
	private Integer pId;
	
	//默认构造函数
	public MatchType()
	{
		
	}

	
	public Integer getpId() {
		return pId;
	}


	public void setpId(Integer pId) {
		this.pId = pId;
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
	 * @return the mcId
	 */
	public Integer getMcId() {
		return mcId;
	}

	/**
	 * @param mcId the mcId to set
	 */
	public void setMcId(Integer mcId) {
		this.mcId = mcId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString(){
		String value = String.format("id=%1$s,name=%2$s,mcId=%3$s;", id,name,mcId);
		return value;
	}
}
