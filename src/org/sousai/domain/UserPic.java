package org.sousai.domain;

import java.io.Serializable;
import java.sql.Blob;

public class UserPic implements Serializable
{
	private static final long serialVersionUID = 9093686341569250373L;
	private Long id;
	private String path;
	private Blob pic;
	
	//默认构造器
	UserPic()
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
	 * @return the path
	 */
	public String getPath() {
		return path;
	}

	/**
	 * @param path the path to set
	 */
	public void setPath(String path) {
		this.path = path;
	}

	/**
	 * @return the pic
	 */
	public Blob getPic() {
		return pic;
	}

	/**
	 * @param pic the pic to set
	 */
	public void setPic(Blob pic) {
		this.pic = pic;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}