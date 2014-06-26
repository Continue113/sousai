package org.sousai.action.base;


import org.sousai.service.*;

import com.opensymphony.xwork2.ActionSupport;

public class UserBaseAction extends ActionSupport{

	private static final long serialVersionUID = 1650616488933513572L;
	//������ҵ���߼����
	protected UserManager umg;
	protected CommonManager cmg;
	
	public void setUserManager (UserManager umg) 
	{
		this.umg = umg;
	}

	public void setCommonManager(CommonManager cmg)
	{
		this.cmg = cmg;
	}
}
