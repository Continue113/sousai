package org.sousai.vo;

import java.io.Serializable;
import java.sql.Date;

public class CourtBean implements Serializable
{
	private static final long serialVersionUID = -7181907300029680131L;
	private Long id;
	private String name;
	private int courtType;
	private int matchType;
	private int province;
	private int city;
	private int zone;
	private String addr;
	private Integer tableNum;
	private String tel;
	private String price;
	private String workTime;
	private String intro;
	private char verify;
	private Date relDate;
	private Date modDate;
	private Long picId;
	
	//默认构造器
	public CourtBean()
	{
	}
	//初始化所有参数的构造器
	public CourtBean(Long id, String name, int courtType, int matchType, int province
			, int city, int zone, String addr, Integer tableNum, String tel
			, String price, String workTime, String intro, char verify
			, Date relDate, Date modDate, Long picId)
	{
		this.id = id;
		this.name = name;
		this.courtType = courtType;
		this.matchType = matchType;
		this.province = province;
		this.city = city;
		this.zone = zone;
		this.addr = addr;
		this.tableNum = tableNum;
		this.tel = tel;
		this.price = price;
		this.workTime = workTime;
		this.intro = intro;
		this.verify = verify;
		this.relDate = relDate;
		this.modDate = modDate;
		this.picId = picId;
	}
	
	//id属性的setter和getter
	public void setId(long id)
	{
		this.id = id;
	}
	public long getId()
	{
		return this.id;
	}
	
	//name属性的setter和getter
	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		return this.name;
	}
	
	//courtType的setter和getter
	public void setCourtType(int courtType)
	{
		this.courtType = courtType;
	}
	public int getCourtType()
	{
		return this.courtType;
	}
	
	//matchType的setter和getter
	public void setMatchType(int matchType)
	{
		this.matchType = matchType;
	}
	public int getMatchType()
	{
		return this.matchType;
	}
	
	//province的setter和getter
	public void setProvince(int province)
	{
		this.province = province;
	}
	public int getProvince()
	{
		return this.province;
	}
	
	//city的setter和getter
	public void setCity(int city)
	{
		this.city = city;
	}
	public int getCity()
	{
		return this.city;
	}
	
	//zone的setter和getter
	public void setZone(int zone)
	{
		this.zone = zone;
	}
	public int getZone()
	{
		return this.zone;
	}
	
	//addr的setter和getter
	public void setAddr(String addr)
	{
		this.addr = addr;
	}
	public String getAddr()
	{
		return this.addr;
	}
	
	//tableNum的setter和getter
	public void setTableNum(int tableNum)
	{
		this.tableNum = tableNum;
	}
	public int getTableNum()
	{
		return tableNum;
	}
	
	//tel属性的setter和getter
	public void setTel(String tel)
	{
		this.tel = tel;
	}
	public String getTel()
	{
		return this.tel;
	}
	
	//price属性的setter和getter
	public void setPrice(String price)
	{
		this.price = price;
	}
	public String getPrice()
	{
		return price;
	}
	
	//workTime属性的setter和getter
	public void setWorkTime(String workTime)
	{
		this.workTime = workTime;
	}
	public String getWorkTime()
	{
		return this.workTime;
	}
	
	//intro属性的setter和getter
	public void setIntro(String intro)
	{
		this.intro = intro;
	}
	public String getIntro()
	{
		return this.intro;
	}
	
	//verify属性的setter和getter
	public void setVerify(char verify)
	{
		this.verify = verify;
	}
	public char getVerify()
	{
		return this.verify;
	}
	
	//relDate属性的setter和getter
	public void setRelDate(Date relDate)
	{
		this.relDate = relDate;
	}
	public Date getRelDate()
	{
		return this.relDate;
	}
	
	//modDate属性的setter和getter
	public void setModDate(Date modDate)
	{
		this.modDate = modDate;
	}
	public Date getModDate()
	{
		return this.modDate;
	}
	
	//picId属性的setter和getter
	public void setPicId(long picId)
	{
		this.picId = picId;
	}
	public long getPicId()
	{
		return picId;
	}
}