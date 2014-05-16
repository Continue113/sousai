package org.sousai.action;

import org.sousai.action.base.*;
import org.sousai.domain.*;
import org.sousai.service.*;
import org.sousai.vo.*;

import static org.sousai.service.UserManager.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.opensymphony.xwork2.*;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.*;

/**
 * Description:
 * <br/>this action will be executed when some user want to login
 * <br/>if the user logged in, the action will pass the infomation to JSP
 * 
 * <br/>Copyright (C), 2014-2024, Myic
 * @author Myic myic211@gmail.com
 * @version 1.0
 *
 */

public class ValidNameAction extends UserBaseAction
{
	private static final long serialVersionUID = 4622236412362778987L;
	private final String NAME_UNUSE = "true";
	private final String NAME_USED = "false";
	
	private User user;
	
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}
	
	public String execute() throws Exception
	{
		System.out.println("validName now!");
		//ActionContext ctx = ActionContext.getContext();
		if(umg == null)
		{
			System.out.println("umg null!!!");
		}
		HttpServletResponse response = ServletActionContext.getResponse();
	    response.setDateHeader("Expires", 0);  
	    response.addHeader("Pragma", "no-cache");  
	    response.setHeader("Cache-Control", "no-cache");  
	    response.setContentType("text/plain;charset=UTF-8"); 
		if(umg.validName(getUser().getName()) == 1)
		{
			System.out.println("unuse!");
			response.getWriter().write(NAME_UNUSE); 
		}
		else
		{
			System.out.println("used");
			response.getWriter().write(NAME_USED); 
		}
		response.getWriter().flush();
		// 因为直接输出内容而不经过jsp,因此返回null.  
	    return null;  
	}
}
