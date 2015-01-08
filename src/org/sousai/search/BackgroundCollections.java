package org.sousai.search;

import java.util.LinkedList;

import org.apache.struts2.ServletActionContext;
import org.sousai.tools.JSONUtils;

public class BackgroundCollections {
	private LinkedList<MatchData> matchesJson;
	//private String statu = null ;

	public String loadJson() {
		matchesJson = new Jdbc().select();
		JSONUtils.toJson(ServletActionContext.getResponse(), matchesJson);
		//statu = "success" ;
		return "success";
	}

	public LinkedList<MatchData> getMatchesJson() {
		return matchesJson;
	}

	public void setMatchesJson(LinkedList<MatchData> matchesJson) {
		this.matchesJson = matchesJson;
	}
}