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
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
