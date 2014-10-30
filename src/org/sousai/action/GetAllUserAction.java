package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

public class GetAllUserAction extends UserBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2408380537451754604L;

	public String execute() throws Exception {
		try {
			List<UserBean> list = amg.getAllUser();
			if (list != null) {
				JSONUtils.toJson(ServletActionContext.getResponse(), list);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}
		return null;
	}
}
