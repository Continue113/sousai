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
	
}
