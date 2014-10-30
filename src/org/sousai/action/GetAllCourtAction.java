package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.CourtBean;

public class GetAllCourtAction extends UserBaseAction
{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1176111777851902140L;
	
	public String execute() throws Exception{
		try{
			List<CourtBean> list = amg.getAllCourt();
			if(list != null){
				JSONUtils.toJson(ServletActionContext.getResponse(), list);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}catch(Exception e){
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "success");
		}
		return null;
	}
	
}
