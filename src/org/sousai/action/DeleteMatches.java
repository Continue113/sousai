package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;

public class DeleteMatches extends UserBaseAction{

	private static final long serialVersionUID = 6677458282634278878L;
	private Integer[] matchIds;
	/**
	 * @return the matchIds
	 */
	public Integer[] getMatchIds() {
		return matchIds;
	}
	/**
	 * @param matchIds the matchIds to set
	 */
	public void setMatchIds(Integer[] matchIds) {
		this.matchIds = matchIds;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute () throws Exception{
		String value = null;
		try{
			amg.deleteMatches(getMatchIds());
			value = Constant.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			value = Constant.FAIL;
		}
		return value;
	}
}
