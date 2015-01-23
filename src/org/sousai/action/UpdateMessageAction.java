package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.Message;
import org.sousai.tools.JSONUtils;

public class UpdateMessageAction extends UserBaseAction{

	private static final long serialVersionUID = 4325832509356315062L;

	private Message message;

	/**
	 * @return the message
	 */
	public Message getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(Message message) {
		this.message = message;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute() throws Exception{
		amg.updateMessage(message);
		JSONUtils.toJson(ServletActionContext.getResponse(), Constant.SUCCESS);
		return null;
	}
}
