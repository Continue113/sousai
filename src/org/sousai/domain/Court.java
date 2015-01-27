package org.sousai.domain;


import java.io.Serializable;
import java.util.Date;

import org.sousai.tools.CommonUtils;

public class Court implements Serializable
{
	private static final long serialVersionUID = -2860243248501180283L;
	
	private Integer id;
	private String name;
	private Integer courtTypeId;
	private String matchType;
	private Integer regionId;
	private String region;
	private String addr;
	private Integer tableNum;
	private String tel;
	private String price;
	private String workTime;
	private Integer matchCount;
	private String intro;
	private char verify;
	private Date relDate;
	private java.sql.Date modDate;
//	private Set<CourtPic> courtPic = new HashSet<CourtPic>();
//	private Set<Message> message = new HashSet<Message>();
	private Integer userId;
	//默认构造器
	public Court()
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
	public Integer getRegionId() {
		return regionId;
	}

	/**
	 * @param region the region to set
	 */
	public void setRegionId(Integer regionId) {
		this.regionId = regionId;
	}

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region the region to set
	 */
	public void setRegion(String region) {
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
	 * @return the matchCount
	 */
	public Integer getMatchCount() {
		return matchCount;
	}

	/**
	 * @param matches the matchCount to set
	 */
	public void setMatchCount(Integer matchCount) {
		this.matchCount = matchCount;
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
	public void setRelDate(Object relDate) {
		try {
			if (relDate instanceof Date) {
				this.relDate = (Date) relDate;
			} else if (relDate instanceof String) {
				this.relDate = CommonUtils.ParseDateParam(((String) relDate),
						null);
			} else if (relDate instanceof String[]) {
				this.relDate = CommonUtils.ParseDateParam(
						((String[]) relDate)[0], null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
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
	public void setModDate(Object modDate) {
		try {
			if (modDate instanceof java.sql.Date) {
				this.modDate = (java.sql.Date) modDate;
			} else if (modDate instanceof String) {
				this.modDate = new java.sql.Date(CommonUtils.ParseDateParam(((String) modDate),
						null).getTime());
			} else if (modDate instanceof String[]) {
				this.modDate = new java.sql.Date(CommonUtils.ParseDateParam(
						((String[]) modDate)[0], null).getTime());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String toString(){
		return "id="+this.id+",name="+this.name+",courtTypeId="+this.courtTypeId+",matchType="+this.matchType+",regionId="+this.regionId
				+",region="+this.region+",addr="+this.addr+",tableNum="+this.tableNum+",tel="+this.tel+",price="+this.price+",workTime="+this.workTime
				+",matchCount="+this.matchCount+",intro="+this.intro+",verify="+this.verify+",relDate="+this.relDate+",modDate="+this.modDate
				+",userId="+this.userId;
	}
}
