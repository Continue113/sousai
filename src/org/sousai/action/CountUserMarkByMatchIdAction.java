package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;

public class CountUserMarkByMatchIdAction extends UserBaseAction{

	private static final long serialVersionUID = 26228602832724256L;

	private String matchIds;

	/**
	 * @return the matchIds
	 */
	public String getMatchIds() {
		return matchIds;
	}

	/**
	 * @param matchIds the matchIds to set
	 */
	public void setMatchIds(String matchIds) {
		this.matchIds = matchIds;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute () throws Exception{
		try{
			String[] arrayMatchIds = matchIds.split(",");
			Integer[] iMatchIds = new Integer[arrayMatchIds.length];
			for (int i = 0; i < arrayMatchIds.length; i++) {
				iMatchIds[i] = Integer.valueOf(arrayMatchIds[i]);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), amg.countUserMarkByMatchIds(iMatchIds));
		}catch(Exception e){
			
		}
		return null;
	}
}
