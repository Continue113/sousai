package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.tools.*;

public class RelMessageAction extends UserBaseAction {

	private static final long serialVersionUID = 1787726008908191356L;
	
	private Message message;
	
	public void setMessage(Message message)
	{
		this.message = message;
	}
	public Message getMessage()
	{
		return this.message;
	}
	
	public String execute() throws Exception
	{
		MyPrint.myPrint("in RelMessageAction!");
		MyPrint.myPrint("userName = " +message.getUserName());
		MyPrint.myPrint("courtId = "+ message.getCourtId());
		JSONUtils.toJson(ServletActionContext.getResponse(), umg.relMessage(getMessage()));
		return null;
	}
}
