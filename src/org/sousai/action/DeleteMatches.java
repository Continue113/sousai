package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;

public class DeleteMatches extends UserBaseAction{

	private static final long serialVersionUID = 6677358282634278878L;
	private String matchIds;
	/**
	 * @return the matchIds
	 */
	public String getMatchIds() {
//		for(Integer i: matchIds)
//		System.out.println("i = "+i);
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
		String value = null;
		try{
			String[] arrayMatchIds = matchIds.split(",");
			Integer[] iMatchIds = new Integer[arrayMatchIds.length];
			for(int i=0; i<arrayMatchIds.length; i++){
				iMatchIds[i] = Integer.valueOf(arrayMatchIds[i]);
			}
			int i = amg.deleteMatches(iMatchIds);
			System.out.println("删除数据："+i+" 条");
			value = Constant.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			value = Constant.FAIL;
		}
		System.out.println(value);
		return value;
	}
}
