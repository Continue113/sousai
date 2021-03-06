package org.sousai.domain;

import java.io.Serializable;

public class UserMark implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -3373120280747224013L;
	Integer id;
	Integer userId;
	Integer matchId;

	public UserMark(){
	}
	
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the matchId
	 */
	public Integer getMatchId() {
		return matchId;
	}

	/**
	 * @param matchId
	 *            the matchId to set
	 */
	public void setMatchId(Integer matchId) {
		this.matchId = matchId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString(){
		return String.format("id = %1$s, userId = %2$s, matchId = %3$s", id, userId, matchId);
	}
}
