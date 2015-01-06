package org.sousai.search;

import java.io.Serializable;

public class MatchData implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// 比赛基本信息
	private int id = 0 ;
	private String url = null; // 比赛信息源地址
	private String sponsor = null; // 发起人
	private String name = null; // 比赛名称
	private String matchType = null; // 比赛类型
	private String matchAddress = null; // 比赛地点
	private String matchStartTime = null; // 比赛开始时间
	private String matchDeadline = null; // 截止日期

	// html+css文件内容
	private String matchIntroduction = null; // 比赛简介

	public static class Builder {
		// 比赛基本信息
		private int id = 0 ;
		private String url = null; // 比赛信息源地址
		private String sponsor = null; // 发起人
		private String name = null; // 比赛名称
		private String matchType = null; // 比赛类型
		private String matchAddress = null; // 比赛地点
		private String matchStartTime = null; // 比赛开始时间
		private String matchDeadline = null; // 截止日期

		// html+css文件内容
		private String matchIntroduction = null; // 比赛简介

		public Builder(String url, String name) {
			this.url = url;
			this.name = name;
		}
		
		public Builder id(int id){
			this.id = id ;
			return this ;
		}

		public Builder sponsor(String sponsor) {
			this.sponsor = sponsor;
			return this;
		}

		public Builder matchType(String matchType) {
			this.matchType = matchType;
			return this;
		}

		public Builder matchAddress(String matchAddress) {
			this.matchAddress = matchAddress;
			return this;
		}

		public Builder matchStartTime(String matchStartTime) {
			this.matchStartTime = matchStartTime;
			return this;
		}

		public Builder matchDeadline(String matchDeadline) {
			this.matchDeadline = matchDeadline;
			return this;
		}


		public Builder matchIntroduction(String matchIntroduction) {
			this.matchIntroduction = matchIntroduction;
			return this;
		}

		public MatchData build() {
			return new MatchData(this);
		}
	}

	public MatchData(){
	}
	
	private MatchData(Builder builder) {
		id = builder.id ;
		url = builder.url;
		name = builder.name;
		sponsor = builder.sponsor;
		matchType = builder.matchType;
		matchAddress = builder.matchAddress;
		matchStartTime = builder.matchStartTime;
		matchDeadline = builder.matchDeadline;
		matchIntroduction = builder.matchIntroduction;
	}
	
	public void setId(int id) {
		this.id = id;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}

	public void setMatchAddress(String matchAddress) {
		this.matchAddress = matchAddress;
	}

	public void setMatchStartTime(String matchStartTime) {
		this.matchStartTime = matchStartTime;
	}

	public void setMatchDeadline(String matchDeadline) {
		this.matchDeadline = matchDeadline;
	}

	public void setMatchIntroduction(String matchIntroduction) {
		this.matchIntroduction = matchIntroduction;
	}

	public int getId(){
		return id ;
	}

	public String getUrl() {
		return url;
	}

	public String getName() {
		return name;
	}

	public String getSponsor() {
		return sponsor;
	}

	public String getMatchType() {
		return matchType;
	}

	public String getMatchAddress() {
		return matchAddress;
	}

	public String getMatchStartTime() {
		return matchStartTime;
	}

	public String getMatchDeadline() {
		return matchDeadline;
	}


	public String getMatchIntroduction() {
		return matchIntroduction;
	}

	public String toString() {
		return url + "\n" + name +"\n" + matchType + "\n"
				+ matchAddress + "\n" + matchStartTime + "\n" + matchDeadline
				+ "\n" + matchIntroduction;
	}
}
