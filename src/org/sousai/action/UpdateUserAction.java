package org.sousai.action;

import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;

public class UpdateUserAction extends UserBaseAction 
{
	private static final long serialVersionUID = -7052397318201508963L;
	
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
		if(umg.updateUser(getUser()) != 0)
		{
			return SUCCESS;
		}
		return ERROR;
	}
}
