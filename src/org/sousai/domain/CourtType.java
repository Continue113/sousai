package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class CourtType implements Serializable
{
	private static final long serialVersionUID = -31205406831690550L;
	
	private Integer id;
	private String name;
	//private Integer matchId;
	private Integer matchTypeId;
	
	//默认构造器
	CourtType()
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
	 * @return the matchTypeId
	 */
	public Integer getMatchTypeId() {
		return matchTypeId;
	}

	/**
	 * @param matchTypeId the matchTypeId to set
	 */
	public void setMatchTypeId(Integer matchTypeId) {
		this.matchTypeId = matchTypeId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
