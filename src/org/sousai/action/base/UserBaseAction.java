package org.sousai.action.base;

import org.apache.struts2.ServletActionContext;
import org.sousai.common.Constant;
import org.sousai.service.*;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class UserBaseAction extends ActionSupport {

	private static final long serialVersionUID = 1650616488933513572L;
	// ������ҵ���߼����
	protected UserManager umg;
	protected CommonManager cmg;
	protected AdminManager amg;

	public void setUserManager(UserManager umg) {
		this.umg = umg;
	}

	public void setCommonManager(CommonManager cmg) {
		this.cmg = cmg;
	}

	public void setAdminManager(AdminManager amg) {
		this.amg = amg;
	}
	

	/**
	 * 判断UserBean中用户类型
	 * @return
	 */
	public String getUserType(){
		UserBean tempUser = null;
		String value = null;
		try {
			tempUser = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");
			if(CommonUtils.isNullOrEmpty(tempUser)){//未登录
				value = Constant.UNLOGIN;
			}else if(tempUser.getUserType() == '2'){//管理员
				value = Constant.SUCCESS;
			}else{//普通用户
				value = Constant.DENIED;
			}
		} catch (Exception e) {
			value = Constant.ERROR;
			System.out.println(e);
		}
		return value;
	}
	
	public boolean isAdmin(){
		String userType = getUserType();
		boolean value = true;
		if(userType != Constant.SUCCESS){
			JSONUtils
			.toJson(ServletActionContext.getResponse(), userType);
			value = false;
		}
		return value;
	}
	public boolean isLogin(){
		String userType = getUserType();
		boolean value = true;
		if(userType == Constant.UNLOGIN){
			JSONUtils
			.toJson(ServletActionContext.getResponse(), userType);
			value = false;
		}
		return value;
	}
}
