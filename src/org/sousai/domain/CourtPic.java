package org.sousai.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.sql.Blob;
import java.util.*;

public class CourtPic implements Serializable
{
	private static final long serialVersionUID = -5076690952824550177L;
	private Long id;
	private String path;
	//private Blob pic;
	private byte[] pic;
	private Long courtId;
	
	//默认构造器
	public CourtPic()
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
	public byte[] getPic() {
		return pic;
	}

	/**
	 * @param pic the pic to set
	 */
	public void setPic(byte[] pic) {
		this.pic = pic;
	}

	/**
	 * @return the courtId
	 */
	public Long getCourtId() {
		return courtId;
	}

	/**
	 * @param courtId the courtId to set
	 */
	public void setCourtId(Long courtId) {
		this.courtId = courtId;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
