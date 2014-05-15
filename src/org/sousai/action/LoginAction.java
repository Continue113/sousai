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

public class LoginAction extends UserBaseAction
{
	//����һ��������Ϊ�û���¼�ɹ���Result��
	private final String USER_RESULT = "user";
	//����һ��������Ϊ����Ա��½�ɹ���Result��
	private final String ADMIN_RESULT = "admin";
	//��װ�������
	private User user;
	//�����¼�����ʾ��Ϣ
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
	
	
	
	//tip���Ե�getter��setter
	/*public void setTip(String tip)
	{
		this.tip = tip;
	}
	public String getTip()
	{
		return this.tip;
	}*/
	
	public UserBean getUserInfo()
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
		System.out.println(getUser().getName()+"  "+getUser().getPwd());
		//String ver2 = (String)ctx.getSession().get("rand");
		
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
			System.out.println("+++++++++++++++++++++");
			//setTip("���Ѿ��ɹ���¼ϵͳ");
			ctx.getSession().put("userBean", getUserInfo());
			System.out.println("test set");
			return USER_RESULT;
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
			System.out.println("�õģ�ʧ����");
			return ERROR;
		}
			
	}
}
