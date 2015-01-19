package org.sousai.search;

import java.util.LinkedList;

import org.apache.struts2.ServletActionContext;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;

public class BackgroundCollections {
	private LinkedList<MatchData> matches = new LinkedList<MatchData>() ;
	private FrontMessage matchesJson ;
	private Integer currentPage;
	private Integer rows;

	public String loadJson() {
		LinkedList<MatchData> listAll = new Jdbc().select();
		System.out.println(currentPage+"----"+rows);
		for(int i=(currentPage-1)*rows;i<(currentPage*rows)&&i<listAll.size();i++){
			matches.add(listAll.get(i)) ;
		}
		matchesJson = new FrontMessage(matches,listAll.size()) ;
		JSONUtils.toJson(ServletActionContext.getResponse(), matchesJson);
		return "success";
	}

	public FrontMessage getMatchesJson() {
		return matchesJson;
	}

	public void setMatchesJson(FrontMessage matchesJson) {
		this.matchesJson = matchesJson;
	}

	public Integer getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}
	
}