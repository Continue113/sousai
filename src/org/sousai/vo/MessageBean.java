package org.sousai.vo;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.sousai.tools.CommonUtils;

public class MessageBean {
	private Long id;
	private Long parentId;
	private Long rootId;
	private Integer userId;
	private Integer courtId;
	private String time;
	private String mesg;
	private String userName;
	private String visibleName;
	private Integer state;
	private String courtName;
	
	public MessageBean(Long id, Long parentId, Long rootId, Integer userId, Integer courtId,
			Date time, String mesg, String visibleName, String userName, Integer state, String courtName) throws Exception {
		super();
		this.id = id;
		this.parentId = parentId;
		this.rootId = rootId;
		this.userId = userId;
		this.courtId = courtId;
		this.time = CommonUtils.DateToString(time, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.mesg = mesg;
		this.userName = userName;
		this.visibleName = visibleName;
		this.state = state;
		this.courtName = courtName;
	}
	
	public MessageBean(Long id, Long parentId, Long rootId, Integer userId, Integer courtId,
			Date time, String mesg, String visibleName, Integer state, String courtName) throws Exception {
		super();
		this.id = id;
		this.parentId = parentId;
		this.rootId = rootId;
		this.userId = userId;
		this.courtId = courtId;
		this.time = CommonUtils.DateToString(time, new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));
		this.mesg = mesg;
		this.visibleName = visibleName;
		this.state = state;
		this.courtName = courtName;
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
	 * @return the parentId
	 */
	public Long getParentId() {
		return parentId;
	}
	/**
	 * @param parentId the parentId to set
	 */
	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}
	
	
	/**
	 * @return the visibleName
	 */
	public String getVisibleName() {
		return visibleName;
	}

	/**
	 * @param visibleName the visibleName to set
	 */
	public void setVisibleName(String visibleName) {
		this.visibleName = visibleName;
	}

	/**
	 * @return the rootId
	 */
	public Long getRootId() {
		return rootId;
	}

	/**
	 * @param rootId the rootId to set
	 */
	public void setRootId(Long rootId) {
		this.rootId = rootId;
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
	 * @return the courtId
	 */
	public Integer getCourtId() {
		return courtId;
	}
	/**
	 * @param courtId the courtId to set
	 */
	public void setCourtId(Integer courtId) {
		this.courtId = courtId;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		this.time = time;
	}
	
	/**
	 * @return the state
	 */
	public Integer getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(Integer state) {
		this.state = state;
	}

	/**
	 * @return the mesg
	 */
	public String getMesg() {
		return mesg;
	}
	/**
	 * @param mesg the mesg to set
	 */
	public void setMesg(String mesg) {
		this.mesg = mesg;
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
	 * @return the courtName
	 */
	public String getCourtName() {
		return courtName;
	}
	/**
	 * @param courtName the courtName to set
	 */
	public void setCourtName(String courtName) {
		this.courtName = courtName;
	}
	
}
