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
	private CourtType courtType;
	private String matchType;
	private Region region;
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
	private Set<CourtPic> courtPic = new HashSet<CourtPic>();
	private Set<Message> message = new HashSet<Message>();
	private User user;
	
	//默认构造器
	public Court()
	{
	}
	//初始化所有参数的构造器
	public Court(Long id, String name, CourtType courtType, String matchType, Region region
			, String addr, Integer tableNum, String tel, Set<Message> message
			, String price, String workTime, Integer matches, String intro, char verify
			, Date relDate, Date modDate, Set<CourtPic> courtPic, User user)
	{
		this.id = id;
		this.name = name;
		this.courtType = courtType;
		this.matchType = matchType;
		this.region = region;
		this.addr = addr;
		this.tableNum = tableNum;
		this.tel = tel;
		this.price = price;
		this.workTime = workTime;
		this.matches = matches;
		this.intro = intro;
		this.verify = verify;
		this.relDate = relDate;
		this.modDate = modDate;
		this.courtPic = courtPic;
		this.user = user;
		this.message = message;
	}
	
	//id属性的setter和getter
	public void setId(Long id)
	{
		this.id = id;
	}
	public Long getId()
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
	public void setCourtType(CourtType courtType)
	{
		this.courtType = courtType;
	}
	public CourtType getCourtType()
	{
		return this.courtType;
	}
	
	//matchType的setter和getter
	public void setMatchType(String matchType)
	{
		this.matchType = matchType;
	}
	public String getMatchType()
	{
		return this.matchType;
	}
	
	//region的setter和getter
	public void setRegion(Region region)
	{
		this.region = region;
	}
	public Region getRegion()
	{
		return this.region;
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
	public void setTableNum(Integer tableNum)
	{
		this.tableNum = tableNum;
	}
	public Integer getTableNum()
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
	
	//matches属性的setter和getter
	public void setMatches(Integer matches)
	{
		this.matches = matches;
	}
	public Integer getMatches()
	{
		return this.matches;
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
	
	//courtPic属性的setter和getter
	public void setCourtPic(Set<CourtPic> courtPic)
	{
		this.courtPic = courtPic;
	}
	public Set<CourtPic> getCourtPic()
	{
		return this.courtPic;
	}
	
	//message属性的setter和getter
	public void setMessage(Set<Message> message)
	{
		this.message = message;
	}
	public Set<Message> getMessage()
	{
		return this.message;
	}
	
	//user属性的setter和getter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return user;
	}
	
}
