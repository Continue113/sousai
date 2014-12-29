package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.MatchBean;

public class SearchMatchAction extends UserBaseAction {

	private static final long serialVersionUID = -3698280263257955734L;
	Integer currentPage;
	Integer pageSize;
	String keyValue;

	/**
	 * @return the keyValue
	 */
	public String getKeyValue() {
		return keyValue;
	}

	/**
	 * @param keyValue
	 *            the keyValue to set
	 */
	public void setKeyValue(String keyValue) {
		this.keyValue = keyValue;
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
	 * @return the pageSize
	 */
	public Integer getPageSize() {
		return pageSize;
	}

	/**
	 * @param pageSize
	 *            the pageSize to set
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
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
			if (pageSize == null) {
				pageSize = 25;
			}
			List<MatchBean> list = umg.getByKeyValue(keyValue, currentPage,
					pageSize);
			if (list != null) {
				JSONUtils.toJson(ServletActionContext.getResponse(), list);
			} else {
				JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}
		return null;
	}
}
