package org.sousai.webstatistics;

import java.util.LinkedList;

import org.apache.struts2.ServletActionContext;
import org.sousai.search.Jdbc;
import org.sousai.tools.JSONUtils;

public class Statistics {
	private int month;
	private int year;
	private LinkedList<SiteStats> siteStats = new LinkedList<SiteStats>();

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

	public String statisticsData() {
		Jdbc jdbc = new Jdbc();
		for (int i = 1; i < 13; i++) {
			jdbc.selectRegisterNum(year, i);
			siteStats.add(new SiteStats.Builder().visits(0)
					.registrantsNum(jdbc.selectRegisterNum(year, i))
					.sousaiMatchPublish(0).naturalMatchPublish(0)
					.sousaiSitePublish(0).naturalSitePublish(0).build());
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), siteStats);
		return "success";
	}
}
