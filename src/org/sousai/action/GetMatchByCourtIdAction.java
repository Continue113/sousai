package org.sousai.action;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;

public class GetMatchByCourtIdAction extends UserBaseAction {

	private static final long serialVersionUID = 4750722701386611186L;

	private Integer courtId;
	private Integer currentPage;
	private Integer rows;

	/**
	 * @return the courtId
	 */
	public Integer getCourtId() {
		return courtId;
	}

	/**
	 * @param courtId
	 *            the courtId to set
	 */
	public void setCourtId(Integer courtId) {
		this.courtId = courtId;
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
			mesg.setBody(cmg.findPagedMatchByCourtId(courtId, currentPage, rows));
			mesg.setCount(cmg.countMatchByCourtId(courtId));
			JSONUtils.toJson(ServletActionContext.getResponse(), mesg);
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
