package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class CountEachMatchTypeAction extends UserBaseAction {

	private static final long serialVersionUID = -1821263868721878940L;

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

	public String execute() throws Exception {
		try {
			MyPrint.myPrint("in CountEachMatchTypeAction");
			Integer userId = null;
			//action=1则是用户查找自己发布的比赛类型与数量，否则，则是查找所有比赛类型与数量
			if (!CommonUtils.isNullOrEmpty(action) && action == 1) {
				userId = ((UserBean) ActionContext.getContext().getSession()
						.get("userBean")).getUserId();
			}
			JSONUtils.toJson(ServletActionContext.getResponse(),
					umg.countEachMatchByUserId(userId));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
