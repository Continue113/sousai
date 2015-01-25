package org.sousai.search;

import org.apache.struts2.ServletActionContext;
import org.sousai.domain.User;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class Util {
	public String isLogined(){
		int userId = -1 ;
		try {
			User tempUser = new User((UserBean) ActionContext.getContext()
					.getSession().get("userBean"));
			userId = tempUser.getId();
		} catch (Exception e) {
			JSONUtils.toJson(ServletActionContext.getResponse(), userId);
			System.out.println(e);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), userId);
		return null ;
	}
}
