package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.vo.*;
import org.sousai.tools.*;

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

		String result = "true";
		User tempUser = new User((UserBean)ActionContext.getContext().getSession().get("userBean"));
		String pwd = getUser().getPwd();
		if(!pwd.isEmpty())
		{
			if(MyValidation.validatePwd(pwd))
			{
				tempUser.setPwd(pwd);
			}
			else
			{
				result = "ERROR";
			}
		}
		String email = getUser().getEmail();
		if(!email.isEmpty())
		{
			if(MyValidation.validateEmail(email))
			{
				tempUser.setEmail(email);
			}
			else
			{
				result = "ERROR";
			}
		}
		MyPrint.myPrint(tempUser.getEmail());
		MyPrint.myPrint(tempUser.getPwd());
		if(result == "true" && umg.updateUser(tempUser) == 1)
		{
			MyPrint.myPrint("Update user SUCCESS");
			umg.updateInfo("userBean", tempUser.getId());
			UserBean tempUserBean = (UserBean)ActionContext.getContext().getSession().get("userBean");
			MyPrint.myPrint(tempUserBean.getUserEmail());
			MyPrint.myPrint(tempUserBean.getUserPwd());
			result = "SUCCESS";
		}
		else
		{
			MyPrint.myPrint("Update user ERROR");
			result = "ERROR2";
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), result);
		return null;
	}
}
