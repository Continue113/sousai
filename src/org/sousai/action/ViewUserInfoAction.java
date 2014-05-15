package org.sousai.action;


import org.sousai.action.base.UserBaseAction;
import org.sousai.dao.*;
import org.sousai.domain.*;
import org.sousai.vo.*;

import com.opensymphony.xwork2.ActionContext;

/**
 * Description:
 * <br/>this action is used to get the information of the user with the given name
 * <br/>the action will pass the result to jsp
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */
public class ViewUserInfoAction extends UserBaseAction
{
	private static final long serialVersionUID = -152230374574383367L;
	
	//封装指定用户信息
	private UserBean userBean;
	
	//user 的setter和getter
	public void setUserBean(UserBean userBean)
	{
		this.userBean = userBean;
	}
	public UserBean getUserBean()
	{
		return this.userBean;
	}
	
	//
	public String execute() throws Exception
	{
		//创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		//获取HttpSession中的user属性
		String userName = (String)ctx.getSession()
			.get(WebConstant.USER);
		setUserBean(umg.getByName(userName));
		return SUCCESS;
	}

}
