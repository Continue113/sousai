package org.sousai.domain;

import org.sousai.domain.*;

import java.io.Serializable;

public class Ip implements Serializable {
	private static final long serialVersionUID = -2917849380030704034L;

	private Long id;
	private String ips;
	private Integer num;
	private Long userId;

	// 默认构造器
	Ip() {
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(Long id) {
		this.id = id;
	}

	/**
	 * @return the ips
	 */
	public String getIps() {
		return ips;
	}

	/**
	 * @param ips
	 *            the ips to set
	 */
	public void setIps(String ips) {
		this.ips = ips;
	}

	/**
	 * @return the num
	 */
	public Integer getNum() {
		return num;
	}

	/**
	 * @param num
	 *            the num to set
	 */
	public void setNum(Integer num) {
		this.num = num;
	}

	/**
	 * @return the userId
	 */
	public Long getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
