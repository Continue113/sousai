package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.CourtBean;

public class GetAllCourtAction extends UserBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1176111777851902140L;

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
		MyPrint.myPrint("in GetAllCourtaction");
		try {
			if (currentPage == null) {
				currentPage = 1;
			}
			if (rows == null) {
				rows = 25;
			}
			MyPrint.myPrint("rows="+rows);
			List<CourtBean> list = amg.getAllCourt(currentPage, rows);
			int count = amg.countAllCourt();
			FrontMessage msg = new FrontMessage(list, count);
			if (list != null) {
				JSONUtils.toJson(ServletActionContext.getResponse(), msg);
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
