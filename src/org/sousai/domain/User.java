package org.sousai.domain;

import org.sousai.vo.*;

import java.io.Serializable;
//import java.sql.Date;
import java.sql.Timestamp;
import java.util.*;

public class User implements Serializable{
	private static final long serialVersionUID = 48L;
	//锟斤拷锟斤拷
	private Long id;
	private String name;
	private String pwd;
	private String email;
	private char type;
	private String picId;
	private Timestamp regTime;
	private Timestamp lastLogTime;
	//锟睫诧拷锟斤拷墓锟斤拷锟斤拷锟�	
	public User(){
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
	 * @return the pwd
	 */
	public String getPwd() {
		return pwd;
	}
	/**
	 * @param pwd the pwd to set
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
	 * @param email the email to set
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
	 * @param type the type to set
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
	 * @param picId the picId to set
	 */
	public void setPicId(String picId) {
		this.picId = picId;
	}
	/**
	 * @return the regTime
	 */
	public Timestamp getRegTime() {
		return regTime;
	}
	/**
	 * @param regTime the regTime to set
	 */
	public void setRegTime(Timestamp regTime) {
		this.regTime = regTime;
	}
	/**
	 * @return the lastLogTime
	 */
	public Timestamp getLastLogTime() {
		return lastLogTime;
	}
	/**
	 * @param lastLogTime the lastLogTime to set
	 */
	public void setLastLogTime(Timestamp lastLogTime) {
		this.lastLogTime = lastLogTime;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}
