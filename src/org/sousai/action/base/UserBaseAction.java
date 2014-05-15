package org.sousai.action.base;


import org.sousai.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class UserBaseAction extends ActionSupport{
	
	//依赖的业务逻辑组件
	protected UserManager umg;
	
	public void setUserManager (UserManager umg) 
	{
		this.umg = umg;
	}

}
