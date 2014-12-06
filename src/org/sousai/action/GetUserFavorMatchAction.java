package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.Match;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.MatchBean;
import org.sousai.vo.UserBean;

import com.opensymphony.xwork2.ActionContext;

public class GetUserFavorMatchAction extends UserBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -2544837367980241497L;

	private Integer currentPage;
	private Integer rows;

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
		try {
			List<MatchBean> list = null;
			UserBean userBean = (UserBean) ActionContext.getContext()
					.getSession().get("userBean");
			if (userBean != null) {
				list = umg.getUsersFavorMatch(userBean.getUserId(),
						currentPage, rows);
				if (list != null) {
					JSONUtils.toJson(ServletActionContext.getResponse(), list);
					return null;
				}
			}

			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
			return null;

		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
			return null;
		}

	}
}
