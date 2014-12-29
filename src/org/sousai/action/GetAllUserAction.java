package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.UserBean;

public class GetAllUserAction extends UserBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2408380537451754604L;
	private Integer currentPage;
	private Integer rows;

	
	/**
	 * @return the currentPage
	 */
	public Integer getCurrentPage() {
		return currentPage;
	}


	/**
	 * @param currentPage the currentPage to set
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
	 * @param rows the rows to set
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
			if (currentPage == null) {
				currentPage = 1;
			}
			if (rows == null) {
				rows = 25;
			}
			List<UserBean> list = amg.getAllUser(currentPage, rows);
			int count = amg.countAllUser();
			FrontMessage msg = new FrontMessage(list, count);
			if (list != null) {
				JSONUtils.toJson(ServletActionContext.getResponse(), msg);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}
		return null;
	}
}
