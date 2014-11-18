package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.common.*;

public class DeleteCourts extends UserBaseAction{

	private static final long serialVersionUID = -4757523051822498172L;
	
	//要删除的场地id数组
	private Integer[] courtIds;
	
	/**
	 * @return the courtIds
	 */
	public Integer[] getCourtIds() {
		return courtIds;
	}

	/**
	 * @param courtIds the courtIds to set
	 */
	public void setCourtIds(Integer[] courtIds) {
		this.courtIds = courtIds;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception{
		String value = null;
		try{
		amg.deleteCourts(getCourtIds());
			value = Constant.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			value = Constant.FAIL;
		}
		return value;
	}
}
