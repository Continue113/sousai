package org.sousai.webstatistics;

public class Statistics {
	private int month ;
	private int year ;
	private SiteStats siteStats = null ;
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
	public SiteStats getSiteStats() {
		return siteStats;
	}
	public void setSiteStats(SiteStats siteStats) {
		this.siteStats = siteStats;
	}
	
	public String statisticsData(){
		
		
		return "success" ;
	}
}
