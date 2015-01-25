package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.tools.JSONUtils;

public class DeleteUsersByAdminAction extends UserBaseAction{

	private static final long serialVersionUID = -1854249322577891477L;
	
	private String userIds;

	/**
	 * @return the UserIds
	 */
	public String getUserIds() {
		return userIds;
	}

	/**
	 * @param ids the ids to set
	 */
	public void setUserIds(String userIds) {
		this.userIds = userIds;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	public String execute() throws Exception{
		String value = null;
		try{
			String[] arrayUserIds = userIds.split(",");
			Integer[] iUserIds = new Integer[arrayUserIds.length];
			for(int i=0; i<arrayUserIds.length; i++){
				iUserIds[i] = Integer.valueOf(arrayUserIds[i]);
			}
			amg.deleteUsers(iUserIds);
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
