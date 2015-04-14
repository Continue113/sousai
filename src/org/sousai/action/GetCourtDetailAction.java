package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;

public class GetCourtDetailAction extends UserBaseAction{
	
	private static final long serialVersionUID = -4814351319619371893L;
	
	public Integer id;
	
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception{
		MyPrint.myPrint("in GetCourtDetailAciton");
		CourtBean cb = umg.getByCourtId(id);
		JSONUtils.toJson(ServletActionContext.getResponse(), umg.getByCourtId(id));
		return null;
	}

}
