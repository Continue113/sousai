package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.*;
import org.sousai.domain.*;

import java.util.List;
public class ShowMessagesAction extends UserBaseAction {

	private static final long serialVersionUID = -8289798960851998802L;
	
	//所有评论
	private List<Message> messages;
	//场地id
	private Integer courtId;
	
	//messages的setter和getter
	public void setMessages(List<Message> messages)
	{
		this.messages = messages;
	}
	public List<Message> getMessages()
	{
		return this.messages;
	}
	
	//courtId的setter和getter
	public void setCourtId(Integer courtId)
	{
		this.courtId = courtId;
	}
	public Integer getCourtId()
	{
		return this.courtId;
	}
	public String execute() throws Exception
	{
		MyPrint.myPrint("in ShowMessageAction!");
		JSONUtils.toJson(ServletActionContext.getResponse(), umg.getMessages(getCourtId()));
		return null;
	}
}
