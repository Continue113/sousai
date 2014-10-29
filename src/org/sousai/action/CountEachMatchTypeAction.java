package org.sousai.action;

import java.util.Map;
import java.util.Set;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class CountEachMatchTypeAction extends UserBaseAction {

	private static final long serialVersionUID = -1821263868721878940L;

	public String execute() throws Exception {
		try {
			MyPrint.myPrint("in CountEachMatchTypeAction");
			JSONUtils.toJson(ServletActionContext.getResponse(), umg
					.countEachMatchByUserId(((UserBean) ActionContext
							.getContext().getSession().get("userBean"))
							.getUserId()));
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			throw new Exception(e);
		}
	}
}
