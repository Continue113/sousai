package org.sousai.domain;

import org.sousai.tools.CommonUtils;
import org.sousai.vo.*;

import java.io.Serializable;
import java.text.ParseException;
//import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.*;

public class User implements Serializable {
	private static final long serialVersionUID = 48L;
	// 锟斤拷锟斤拷
	private Integer id;
	private String name;
	private String pwd;
	private String email;
	private char type;
	private String picId;
	private Date regTime;
	private Date lastLogTime;
	private Integer lastRegionId;

	// 默认构造函数
	public User() {
	}

	public User(UserBean userBean) throws Exception {
		this.id = userBean.getUserId();
		this.email = userBean.getUserEmail();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		this.lastLogTime = CommonUtils.ParseDateParam(userBean.getUserLastLogTime(), format);
		this.name = userBean.getUserName();
		this.picId = userBean.getUserPicId();
		this.pwd = userBean.getUserPwd();
		this.regTime = CommonUtils.ParseDateParam(userBean.getUserRegTime(), format);
		this.type = userBean.getUserType();
		this.lastRegionId = userBean.getUserLastRegionId();
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}

	/**
	 * @param pwd
	 *            the pwd to set
	 */
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email
	 *            the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the type
	 */
	public char getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(char type) {
		this.type = type;
	}

	/**
	 * @return the picId
	 */
	public String getPicId() {
		return picId;
	}

	/**
	 * @param picId
	 *            the picId to set
	 */
	public void setPicId(String picId) {
		this.picId = picId;
	}

	/**
	 * @return the regTime
	 */
	public Date getRegTime() {
		return regTime;
	}

	/**
	 * @param regTime
	 *            the regTime to set
	 */
	public void setRegTime(Object regTime) {
		try {
			if (regTime instanceof Date) {
				this.regTime = (Date) regTime;
			} else if (regTime instanceof String) {
				this.regTime = CommonUtils.ParseDateParam(((String) regTime),
						null);
			} else if (regTime instanceof String[]) {
				this.regTime = CommonUtils.ParseDateParam(
						((String[]) regTime)[0], null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the lastLogTime
	 */
	public Date getLastLogTime() {
		return lastLogTime;
	}

	/**
	 * @param lastLogTime
	 *            the lastLogTime to set
	 */
	public void setLastLogTime(Object lastLogTime) {
		try {
			if (lastLogTime instanceof Date) {
				this.lastLogTime = (Date) lastLogTime;
			} else if (lastLogTime instanceof String) {
				this.lastLogTime = CommonUtils.ParseDateParam(((String) lastLogTime),
						null);
			} else if (lastLogTime instanceof String[]) {
				this.lastLogTime = CommonUtils.ParseDateParam(
						((String[]) lastLogTime)[0], null);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @return the lastRegionId
	 */
	public Integer getLastRegionId() {
		return lastRegionId;
	}

	/**
	 * @param lastRegionId
	 *            the lastRegionId to set
	 */
	public void setLastRegionId(Integer lastRegionId) {
		this.lastRegionId = lastRegionId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("id = " + id + ",");
		sb.append("name = " + name + ",");
		sb.append("pwd = " + pwd + ",");
		sb.append("email = " + email + ",");
		sb.append("type = " + type + ",");
		sb.append("picId = " + picId + ",");
		sb.append("regTime = " + regTime + ",");

		sb.append("lastLogTime = " + lastLogTime + ",");
		sb.append("lastRegionId = " + lastRegionId);
		return sb.toString();
	}
}
