package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.Match;
import org.sousai.tools.JSONUtils;

public class GetAllMatchAction extends UserBaseAction
{

	/**
	 * 
	 */
	private static final long serialVersionUID = 7127750467955814690L;
	public String execute () throws Exception
	{
		try{List<Match> list = amg.getAllMatch();
		if(list != null){
			JSONUtils.toJson(ServletActionContext.getResponse(), list);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}catch(Exception e){
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse()	, "fail");
		}
		return null;
	}
}
