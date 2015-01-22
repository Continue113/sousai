package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class DeleteMesgsAction extends UserBaseAction{
	private static final long serialVersionUID = 8893501371483691092L;
	private String messageIds;
	/**
	 * @return the messageIds
	 */
	public String getMessageIds() {
//		for(Integer i: messageIds)
//		System.out.println("i = "+i);
		return messageIds;
	}
	/**
	 * @param messageIds the messageIds to set
	 */
	public void setMessageIds(String messageIds) {
		this.messageIds = messageIds;
	}
	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	/* (non-Javadoc)
	 * @see com.opensymphony.xwork2.ActionSupport#execute()
	 */
	public String execute () throws Exception{
		String value = null;
		try{
			String[] arrayMessageIds = messageIds.split(",");
			Integer[] iMessageIds = new Integer[arrayMessageIds.length];
			for(int i=0; i<arrayMessageIds.length; i++){
				iMessageIds[i] = Integer.valueOf(arrayMessageIds[i]);
			}
			amg.deleteMesgs(iMessageIds);
			value = Constant.SUCCESS;
		}catch(Exception e){
			e.printStackTrace();
			value = Constant.FAIL;
		}
		System.out.println(value);
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
