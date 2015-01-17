package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.CourtBean;

public class GetCourtById extends UserBaseAction{

	private static final long serialVersionUID = -4437048474141273543L;
	
	private Integer id;

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
		CourtBean value = null;
		if(!CommonUtils.isNullOrEmpty(id))
		{
			value = cmg.findCourtBeanById(id);
			JSONUtils.toJson(ServletActionContext.getResponse(), value);
		}
		else{
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}

	
}
