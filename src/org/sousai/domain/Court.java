package org.sousai.domain;

import org.sousai.domain.*;
import org.sousai.dao.*;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.*;

public class Court implements Serializable
{
	private static final long serialVersionUID = -2860243248501180283L;
	
	private Long id;
	private String name;
	private Integer courtTypeId;
	private String matchType;
	private Integer region;
	private String addr;
	private Integer tableNum;
	private String tel;
	private String price;
	private String workTime;
	private Integer matches;
	private String intro;
	private char verify;
	private Date relDate;
	private Date modDate;
//	private Set<CourtPic> courtPic = new HashSet<CourtPic>();
//	private Set<Message> message = new HashSet<Message>();
	private Long userId;
	
	//默认构造器
	public Court()
	{
	}

	/**
	 * @return the id
	 */
	public Long getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Long id) {
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
	 * @return the courtTypeId
	 */
	public Integer getCourtTypeId() {
		return courtTypeId;
	}

	/**
	 * @param courtTypeId the courtTypeId to set
	 */
	public void setCourtTypeId(Integer courtTypeId) {
		this.courtTypeId = courtTypeId;
	}

	/**
	 * @return the matchType
	 */
	public String getMatchType() {
		return matchType;
	}

	/**
	 * @param matchType the matchType to set
	 */
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}

	/**
	 * @return the region
	 */
	public Integer getRegion() {
		return region;
	}

	/**
	 * @param region the region to set
	 */
	public void setRegion(Integer region) {
		this.region = region;
	}

	/**
	 * @return the addr
	 */
	public String getAddr() {
		return addr;
	}

	/**
	 * @param addr the addr to set
	 */
	public void setAddr(String addr) {
		this.addr = addr;
	}

	/**
	 * @return the tableNum
	 */
	public Integer getTableNum() {
		return tableNum;
	}

	/**
	 * @param tableNum the tableNum to set
	 */
	public void setTableNum(Integer tableNum) {
		this.tableNum = tableNum;
	}

	/**
	 * @return the tel
	 */
	public String getTel() {
		return tel;
	}

	/**
	 * @param tel the tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/**
	 * @return the price
	 */
	public String getPrice() {
		return price;
	}

	/**
	 * @param price the price to set
	 */
	public void setPrice(String price) {
		this.price = price;
	}

	/**
	 * @return the workTime
	 */
	public String getWorkTime() {
		return workTime;
	}

	/**
	 * @param workTime the workTime to set
	 */
	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	/**
	 * @return the matches
	 */
	public Integer getMatches() {
		return matches;
	}

	/**
	 * @param matches the matches to set
	 */
	public void setMatches(Integer matches) {
		this.matches = matches;
	}

	/**
	 * @return the intro
	 */
	public String getIntro() {
		return intro;
	}

	/**
	 * @param intro the intro to set
	 */
	public void setIntro(String intro) {
		this.intro = intro;
	}

	/**
	 * @return the verify
	 */
	public char getVerify() {
		return verify;
	}

	/**
	 * @param verify the verify to set
	 */
	public void setVerify(char verify) {
		this.verify = verify;
	}

	/**
	 * @return the relDate
	 */
	public Date getRelDate() {
		return relDate;
	}

	/**
	 * @param relDate the relDate to set
	 */
	public void setRelDate(Date relDate) {
		this.relDate = relDate;
	}

	/**
	 * @return the modDate
	 */
	public Date getModDate() {
		return modDate;
	}

	/**
	 * @param modDate the modDate to set
	 */
	public void setModDate(Date modDate) {
		this.modDate = modDate;
	}

	/**
	 * @return the userId
	 */
	public Long getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
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
