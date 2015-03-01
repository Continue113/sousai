package org.sousai.search;

import org.apache.struts2.ServletActionContext;
import org.sousai.common.Constant;
import org.sousai.domain.User;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class Util {
	public String isLogined(){
		UserBean tempUser = null;
		try {
			tempUser = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");
		} catch (Exception e) {
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
			System.out.println(e);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), tempUser);
		return null ;
	}
}
