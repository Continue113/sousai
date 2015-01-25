package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

import com.googlecode.jsonplugin.annotations.JSON;
import com.opensymphony.xwork2.ActionContext;

public class GetCourtByUserIdAction extends UserBaseAction {

	private static final long serialVersionUID = -6597007450480035051L;

	private Integer userId;
	private Integer currentPage;
	private Integer rows;

	/**
	 * @return the userId
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 * @param userId
	 *            the userId to set
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 * @return the currentPage
	 */
	public Integer getCurrentPage() {
		return currentPage;
	}

	/**
	 * @param currentPage
	 *            the currentPage to set
	 */
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	/**
	 * @return the rows
	 */
	public Integer getRows() {
		return rows;
	}

	/**
	 * @param rows
	 *            the rows to set
	 */
	public void setRows(Integer rows) {
		this.rows = rows;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {
		FrontMessage mesg = new FrontMessage();
		try {
			if (currentPage == null) {
				currentPage = 1;
			}
			if (rows == null) {
				rows = Constant.DEFAULT_ROWS;
			}
			if (CommonUtils.isNullOrEmpty(userId)) {
				UserBean userBean = (UserBean) ActionContext.getContext()
						.getSession().get("userBean");
				if (userBean != null) {
					userId = userBean.getUserId();
				}
			}
			mesg.setBody(umg.getCourtByUserId(userId, currentPage, rows));
			mesg.setCount(umg.countCourtByUserId(userId));
		} catch (Exception e) {
			e.printStackTrace();
			mesg.setCount(-1);
		}
		JSONUtils.toJson(ServletActionContext.getResponse(), mesg);
		return null;
	}

}
