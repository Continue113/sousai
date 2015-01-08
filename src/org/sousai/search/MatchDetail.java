package org.sousai.search;

import org.apache.struts2.ServletActionContext;
import org.sousai.tools.JSONUtils;

public class MatchDetail {
	private String id = null ;
	private MatchData matchData = null ;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public MatchData getMatchData() {
		return matchData;
	}

	public void setMatchData(MatchData matchData) {
		this.matchData = matchData;
	}

	public String matchDetail(){
		matchData = new Jdbc().selectFromId(id) ;
		JSONUtils.toJson(ServletActionContext.getResponse(), matchData);
		return null ;
	}
}
