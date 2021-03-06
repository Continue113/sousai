package org.sousai.action;


import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Court;
import org.sousai.tools.JSONUtils;

public class UpdateCourtAction extends UserBaseAction{

	private static final long serialVersionUID = -3660357168319302225L;
	
	private Court court;

	/**
	 * @return the court
	 */
	public Court getCourt() {
		return court;
	}

	/**
	 * @param court the court to set
	 */
	public void setCourt(Court court) {
		this.court = court;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute () throws Exception{
		String value;
		try {
			court.setModDate(new java.sql.Date(new java.util.Date().getTime()));
			cmg.updateCourt(court);
			value = Constant.SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			value = Constant.ERROR;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}

}
