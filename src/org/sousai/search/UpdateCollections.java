package org.sousai.search;

import org.apache.struts2.ServletActionContext;
import org.sousai.tools.JSONUtils;

public class UpdateCollections {
	private MatchData matchData = null;

	public MatchData getMatchData() {
		return matchData;
	}

	public void setMatchData(MatchData matchData) {
		this.matchData = matchData;
	}

	public String updateCollections() {
		try{
			new Jdbc().update(matchData);
			JSONUtils.toJson(ServletActionContext.getResponse(), "success");
		}catch(Exception e){
			JSONUtils.toJson(ServletActionContext.getResponse(), "error");
			System.out.println(e);
		}
		return null;
	}
}
