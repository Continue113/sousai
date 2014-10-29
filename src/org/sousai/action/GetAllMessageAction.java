package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MessageBean;

public class GetAllMessageAction extends UserBaseAction{

	private static final long serialVersionUID = 7302944174236933894L;
	
	public String execute() throws Exception{
		MyPrint.myPrint("in getAllMessageAction");
		List<MessageBean> list = amg.getAllMessage();
		if(list != null){
			JSONUtils.toJson(ServletActionContext.getResponse(), list);
		}
		else{
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}
		return null;
	}

}
