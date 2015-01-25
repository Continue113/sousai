package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.common.Constant;
import org.sousai.domain.*;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.*;

import static org.sousai.service.UserManager.*;

import com.opensymphony.xwork2.*;

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

public class LoginAction extends UserBaseAction
{
	private static final long serialVersionUID = 3350273490378394711L;
	//����һ��������Ϊ�û���¼�ɹ���Result��
	private final String USER_RESULT = "user";
	//����һ��������Ϊ����Ա��½�ɹ���Result��
	private final String ADMIN_RESULT = "admin";
	//��װ�������
	private User user;
	private String tip;
	
	//��������getter��setter
	public void setUser(User user)
	{
		this.user = user;
	}
	public User getUser()
	{
		return this.user;
	}
	
	public UserBean getUserInfo() throws Exception
	{
		return umg.getByName(getUser().getName());
	}
	
	//�����û�����
	public String execute()
		throws Exception
	{
		//����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		//��ȡHttpSession�е�rand����
		//System.out.println(getUser().getName()+"  "+getUser().getPwd());
		//String ver2 = (String)ctx.getSession().get("rand");

		String value = null;
		if(umg==null)
		{
			System.out.println("umg null!!!");
		}
		//����ҵ���߼������������¼����
		int result = umg.validLogin(getUser());
		//��¼���Ϊ��ͨԱ��
		if (result == LOGIN_USER)
		{
			/*ctx.getSession().put(WebConstant.USER 
				, user.getName());
			ctx.getSession().put(WebConstant.LEVEL
				, WebConstant.USER_LEVEL);*/
			ctx.getSession().put("userBean", getUserInfo());
			System.out.println(getUserInfo().getUserRegTime());
			value = Constant.SUCCESS;
		}
		//��¼���Ϊ����
		/*else if (result == LOGIN_ADMIN)
		{
			ctx.getSession().put(WebConstant.USER 
				, manager.getName());
			ctx.getSession().put(WebConstant.LEVEL
				, WebConstant.MGR_LEVEL);
			setTip("���Ѿ��ɹ���¼ϵͳ");
			return MGR_RESULT;
		}*/
		//�û�������벻ƥ��
		else
		{
			//setTip("�û���/���벻ƥ��");
			System.out.println(user.getName());
			value = Constant.ERROR;
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), value);
		return null;
	}
}
