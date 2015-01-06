package org.sousai.search;

public class IndexItem {
	// NAME,TYPE,BEGINTIME,ENDTIME,RULE
	// name,matchType,matchStartTime,matchDeadline,matchIntroduction
	private int id = 0 ;
	private int courtId = 0 ;
	private String name = null ;
	private String publishTime = null ;
	private String matchType = null ;
	private String matchStartTime = null ;
	private String matchDeadline = null ;
	private String matchIntroduction = null ;
	
	public IndexItem() {
    }

	public IndexItem(int id, int courtId, String publishTime, String name,
			String matchType, String matchStartTime, String matchDeadline,
			String matchIntroduction) {
		super();
		this.id = id;
		this.courtId = courtId;
		this.publishTime = publishTime;
		this.name = name;
		this.matchType = matchType;
		this.matchStartTime = matchStartTime;
		this.matchDeadline = matchDeadline;
		this.matchIntroduction = matchIntroduction;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCourtId() {
		return courtId;
	}

	public void setCourtId(int courtId) {
		this.courtId = courtId;
	}

	public String getPublishTime() {
		return publishTime;
	}

	public void setPublishTime(String publishTime) {
		this.publishTime = publishTime;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMatchType() {
		return matchType;
	}

	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}

	public String getMatchStartTime() {
		return matchStartTime;
	}

	public void setMatchStartTime(String matchStartTime) {
		this.matchStartTime = matchStartTime;
	}

	public String getMatchDeadline() {
		return matchDeadline;
	}

	public void setMatchDeadline(String matchDeadline) {
		this.matchDeadline = matchDeadline;
	}

	public String getMatchIntroduction() {
		return matchIntroduction;
	}

	public void setMatchIntroduction(String matchIntroduction) {
		this.matchIntroduction = matchIntroduction;
	}

	@Override
	public String toString() {
		return "IndexItem [id=" + id + ", courtId=" + courtId
				+ ", publishTime=" + publishTime + ", name=" + name
				+ ", matchType=" + matchType + ", matchStartTime="
				+ matchStartTime + ", matchDeadline=" + matchDeadline
				+ ", matchIntroduction=" + matchIntroduction + "]";
	}
}
