package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.*;
import org.sousai.vo.*;
import org.sousai.tools.*;

import com.opensymphony.xwork2.ActionContext;

public class UpdateUserAction extends UserBaseAction {

	private static final long serialVersionUID = -1209141575075295271L;
	private User user;
	private Integer action;

	/**
	 * @return the action
	 */
	public Integer getAction() {
		return action;
	}

	/**
	 * @param action
	 *            the action to set
	 */
	public void setAction(Integer action) {
		this.action = action;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	// user的setter和getter
	public void setUser(User user) {
		this.user = user;
	}

	public User getUser() {
		return this.user;
	}

	@Override
	public String execute() throws Exception {
		MyPrint.myPrint("in update user");
		String result = "true";
		User tempUser = null;
		switch (action) {
		// 用户修改自己信息
		case 1:
			tempUser = new User((UserBean) ActionContext.getContext()
					.getSession().get("userBean"));
			break;
		// 管理员修改用户信息
		case 2:
			tempUser = new User(umg.getByName(user.getName()));
			break;
		default:
			break;
		}
		String pwd = getUser().getPwd();
		MyPrint.myPrint("new pwd = " + pwd);
		if (pwd != null && !pwd.isEmpty()) {
			if (MyValidation.validatePwd(pwd)) {
				tempUser.setPwd(pwd);
			} else {
				result = "ERROR";
			}
		}
		String email = getUser().getEmail();
		MyPrint.myPrint("new email = " + email);
		if (email != null && !email.isEmpty()) {
			if (MyValidation.validateEmail(email)) {
				tempUser.setEmail(email);
			} else {
				result = "ERROR";
			}
		}
		System.out.println();
		MyPrint.myPrint("result=" + result);
		if (result == "true" && umg.updateUser(tempUser) == 1) {
			MyPrint.myPrint("Update user SUCCESS");
			if (action == 1) {
				umg.updateInfo("userBean", tempUser.getId());
				UserBean tempUserBean = (UserBean) ActionContext.getContext()
						.getSession().get("userBean");
				MyPrint.myPrint(tempUserBean.getUserEmail());
				MyPrint.myPrint(tempUserBean.getUserPwd());
			}
			result = "SUCCESS";
		} else {
			MyPrint.myPrint("Update user ERROR");
			result = "ERROR2";
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), result);
		return null;
	}
}
