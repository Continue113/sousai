package org.sousai.webstatistics;

import java.util.LinkedList;
import java.util.SortedMap;
import java.util.TreeMap;

import org.apache.struts2.ServletActionContext;
import org.sousai.search.Jdbc;
import org.sousai.tools.JSONUtils;

public class Statistics {
	private int month;
	private int year;
	private LinkedList<SiteStats> siteStats = new LinkedList<SiteStats>();

	private int dayNum ;
	private String matchType ;
	
	public int getMonth() {
		return month;
	}

	public void setMonth(int month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}
	

	public int getDayNum() {
		return dayNum;
	}

	public void setDayNum(int dayNum) {
		this.dayNum = dayNum;
	}

	public String getMatchType() {
		return matchType;
	}

	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}

	public String statisticsData() {
		Jdbc jdbc = new Jdbc();
		for (int i = 1; i < 13; i++) {
			jdbc.selectRegisterNum(year, i);
			siteStats
					.add(new SiteStats.Builder()
							.visits(0)
							.registrantsNum(jdbc.selectRegisterNum(year, i))
							.sousaiMatchPublish(
									jdbc.selectSousaiMatchPublish(year, i))
							.naturalMatchPublish(
									jdbc.selectNaturalMatchPublish(year, i))
							.sousaiSitePublish(
									jdbc.selectSousaiCourtPublish(year, i))
							.naturalSitePublish(
									jdbc.selectNaturalCourtPublish(year, i))
							.comments(jdbc.selectCommentsNum(year, i)).build());
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), siteStats);
		return "success";
	}

	public String courtStatistics() {
		Jdbc jdbc = new Jdbc();
		String city[] = { "北京", "天津", "上海", "重庆", "河北", "山西", "辽宁", "吉林",
				"黑龙江", "江苏", "浙江", "安徽", "福建", "台湾", "江西", "山东", "河南", "湖北",
				"湖南", "广东", "湖南", "四川", "贵州", "云南", "陕西", "甘肃", "青海", "内蒙古",
				"广西", "西藏", "宁夏", "新疆", "香港", "澳门" };
		SortedMap<String,Integer> cityCourt = new TreeMap<String,Integer>() ;
		System.out.println("天数:"+dayNum+"  比赛类型:"+matchType);
		for(int i=0;i<city.length;i++){
			int num = jdbc.selectCityCourt(city[i],dayNum,matchType) ;
			if(num!=0)
				cityCourt.put(city[i], num) ;
		}
		if(cityCourt.isEmpty())
			JSONUtils.toJson(ServletActionContext.getResponse(), "null");
		else
			JSONUtils.toJson(ServletActionContext.getResponse(), cityCourt);
		return "success";
	}
}
