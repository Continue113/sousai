package org.sousai.action;

import static org.sousai.service.UserManager.REG_SUCCESS;

import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.User;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class RegAction extends UserBaseAction 
{
	//封装请求参数
	private User user;
	//处理登录后的提示信息
	private String tip;
	
	//请求参数的getter和setter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}
	
	
	
	//tip属性的getter和setter
	public void setTip(String tip)
	{
		this.tip = tip;
	}
	public String getTip()
	{
		return this.tip;
	}
	
	public UserBean getUserInfo()
	{
		return umg.getByName(getUser().getName());
	
	}
	//处理用户请求
	public String execute()
		throws Exception
	{
		//创建ActionContext实例
		ActionContext ctx = ActionContext.getContext();
		System.out.println("RegAction turn to umg.register");
		user.setEmail("test11@stest.com");
		user.setType('0');
		if(umg==null)
		{
			System.out.println("umg null!!!");
		}
		
		//注册成功
		if(umg.register(getUser()) == REG_SUCCESS)
		{
			/*ctx.getSession().put(WebConstant.USER 
				, user.getName());
			ctx.getSession().put(WebConstant.LEVEL
				, WebConstant.USER_LEVEL);*/
			System.out.println("+++++++++++++++++++++");
			setTip("您已经成功注册");
			ctx.getSession().put("userBean", getUserInfo());
			return "success";
		}
		//登录结果为经理
		/*else if (result == LOGIN_ADMIN)
		{
			ctx.getSession().put(WebConstant.USER 
				, manager.getName());
			ctx.getSession().put(WebConstant.LEVEL
				, WebConstant.MGR_LEVEL);
			setTip("您已经成功登录系统");
			return MGR_RESULT;
		}*/
		//用户名和密码不匹配
		else
		{
			return ERROR;
		}
	}
}
