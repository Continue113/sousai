package org.sousai.action;

import static org.sousai.service.UserManager.REG_SUCCESS;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.User;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class RegAction extends UserBaseAction {
	// ��װ�������
	private User user;
	// �����¼�����ʾ��Ϣ
	private String tip;

	// ��������getter��setter
	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return this.user;
	}

	// tip���Ե�getter��setter
	public void setTip(String tip) {
		this.tip = tip;
	}

	public String getTip() {
		return this.tip;
	}

	public UserBean getUserInfo() {
		return umg.getByName(getUser().getName());

	}

	// �����û�����
	public String execute() throws Exception {
		// ����ActionContextʵ��
		ActionContext ctx = ActionContext.getContext();
		System.out.println("RegAction turn to umg.register");
		// user.setEmail("test11@stest.com");
		MyPrint.myPrint("Pwd" + getUser().getPwd());
		MyPrint.myPrint("email" + getUser().getEmail());
		if (umg == null) {
			System.out.println("umg null!!!");
		}

		// 将用户信息存入Session
		if (umg.register(getUser()) == REG_SUCCESS) {
			/*
			 * ctx.getSession().put(WebConstant.USER , user.getName());
			 * ctx.getSession().put(WebConstant.LEVEL , WebConstant.USER_LEVEL);
			 */
			ctx.getSession().put("userBean", getUserInfo());
			MyPrint.myPrint("SUCCESS");
			JSONUtils.toJson(ServletActionContext.getResponse(), "success");
			return null;
		} else {
			return ERROR;
		}
	}
}
