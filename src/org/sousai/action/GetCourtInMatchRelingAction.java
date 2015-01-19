package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.*;
import org.sousai.common.Constant;
import org.sousai.domain.Court;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.CommonUtils;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;

public class GetCourtInMatchRelingAction extends UserBaseAction {

	private static final long serialVersionUID = -4391779686549825570L;

	private String region;
	private Integer currentPage;
	private Integer rows;

	/**
	 * @return the region
	 */
	public String getRegion() {
		return region;
	}

	/**
	 * @param region
	 *            the region to set
	 */
	public void setRegion(String region) {
		this.region = region;
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

		try {
			if (CommonUtils.isNullOrEmpty(currentPage)) {
				currentPage = 1;
			}
			if (CommonUtils.isNullOrEmpty(rows)) {
				rows = Constant.DEFAULT_ROWS;
			}
			FrontMessage msg = new FrontMessage();
			if (!CommonUtils.isNullOrEmpty(region)) {
				msg.setCount(umg.countByRegion(region));
				msg.setBody(umg.getCourtByRegion(region, currentPage, rows));

			} else {
				msg.setCount(-1);
				msg.setBody(Constant.ERROR);
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), msg);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
