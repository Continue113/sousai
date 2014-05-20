package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.vo.*;

import com.opensymphony.xwork2.ActionContext;

public class UpdateUserAction extends UserBaseAction 
{
	//private static final long serialVersionUID = -7052397318201508963L;

	private static final long serialVersionUID = -1209141575075295271L;
	private User user;
	
	//user的setter和getter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}

	@Override
	public String execute() throws Exception
	{
		System.out.println("update user");
		User tempUser = new User((UserBean)ActionContext.getContext().getSession().get("userBean"));
		System.out.println(""+tempUser.getName());
		System.out.println("" + getUser().getPwd());
		System.out.println("" + getUser().getEmail());
		tempUser.setPwd(getUser().getPwd());
		tempUser.setEmail(getUser().getEmail());
		if(umg.updateUser(getUser()) != 0)
		{
			return SUCCESS;
		}
		return ERROR;
	}
}
