package org.sousai.vo;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CourtBean implements Serializable
{
	String selectCourtBeanField = "select c.ID,c.NAME,c.COURTTYPEID,ct.NAME,c.MATCHTYPE,c.REGIONID,c.TABLENUM,c.TEL,c.MATCHCOUNT,c.PRICE,c.WORKTIME,c.INTRO,c.VERIFY,c.relDate,c.modDate,c.USERID,u.NAME from COURT c, COURTTYPE ct, USER u ";
	private static final long serialVersionUID = -7181907300029680131L;
	private Integer id;
	private String name;
	private Integer courtTypeId;
	private String courtType;
	private String matchType;
	private Integer regionId;
	private String region;
	private String addr;
	private Integer tableNum;
	private String tel;
	private Integer matchCount;
	private String price;
	private String workTime;
	private String intro;
	private char verify;
	private String relDate;
	private String modDate;
	private Long picId;
	private Integer userId;
	private String userName;
	
	//默认构造器
	public CourtBean()
	{
	}
	public CourtBean(String modDate){
		this.modDate = modDate;
	}
	public CourtBean(Integer id, String name, 
			Integer courtTypeId, String courtType,
			String region,char verify,
			String userName
			){
		this.id = id;
		this.name = name;
		this.courtTypeId = courtTypeId;
		this.courtType = courtType;
		this.region = region;
		this.verify = verify;
//		this.modDate = modDate;
		this.userName = userName;
	}
	public CourtBean(Integer id, String name, Integer courtTypeId, 
			String courtType, String matchType, Integer regionId,
			String region, String addr,Integer tableNum, 
			String tel, Integer matchCount, String price,
			String workTime, String intro, char verify, 
			Date relDate, Date modDate, Integer userId,
			String userName) {
		super();
		this.id = id;
		this.name = name;
		this.courtTypeId = courtTypeId;
		this.courtType = courtType;
		this.matchType = matchType;
		this.regionId = regionId;
		this.region = region;
		this.addr = addr;
		this.tableNum = tableNum;
		this.tel = tel;
		this.matchCount = matchCount;
		this.price = price;
		this.workTime = workTime;
		this.intro = intro;
		this.verify = verify;
		SimpleDateFormat timeFm = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.relDate = timeFm.format(relDate);
		SimpleDateFormat dateFm = new SimpleDateFormat("yyyy-MM-dd");
		this.modDate = dateFm.format(modDate);
//		this.picId = picId;
		this.userId = userId;
		this.userName = userName;
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
	 * @return the courtType
	 */
	public String getCourtType() {
		return courtType;
	}

	/**
	 * @param courtType the courtType to set
	 */
	public void setCourtType(String courtType) {
		this.courtType = courtType;
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
	 * @return the regionId
	 */
	public Integer getRegionId() {
		return regionId;
	}

	/**
	 * @param regionId the regionId to set
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
	 * @return the matchCount
	 */
	public Integer getMatchCount() {
		return matchCount;
	}

	/**
	 * @param matchCount the matchCount to set
	 */
	public void setMatchCount(Integer matchCount) {
		this.matchCount = matchCount;
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
	public String getrelDate() {
		return relDate;
	}

	/**
	 * @param relDate the relDate to set
	 */
	public void setrelDate(String relDate) {
		this.relDate = relDate;
	}

	/**
	 * @return the modDate
	 */
	public String getmodDate() {
		return modDate;
	}

	/**
	 * @param modDate the modDate to set
	 */
	public void setmodDate(String modDate) {
		this.modDate = modDate;
	}

	/**
	 * @return the picId
	 */
	public Long getPicId() {
		return picId;
	}

	/**
	 * @param picId the picId to set
	 */
	public void setPicId(Long picId) {
		this.picId = picId;
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
	 * @return the userName
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 * @param userName the userName to set
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}