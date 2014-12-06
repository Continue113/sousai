package org.sousai.action;

import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.tools.JSONUtils;

public class ScreenMatchAction extends UserBaseAction {
	private static final long serialVersionUID = 1912833448394316991L;

	private int[] dayOfWeek;
	private Integer state;
	private Integer regionId;
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

	/**
	 * @return the dayOfWeek
	 */
	public int[] getDayOfWeek() {
		return dayOfWeek;
	}

	/**
	 * @param dayOfWeek
	 *            the dayOfWeek to set
	 */
	public void setDayOfWeek(int[] dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}

	/**
	 * @return the state
	 */
	public Integer getState() {
		return state;
	}

	/**
	 * @param state
	 *            the state to set
	 */
	public void setState(Integer state) {
		this.state = state;
	}

	/**
	 * @return the regionId
	 */
	public Integer getRegionId() {
		return regionId;
	}

	/**
	 * @param regionId
	 *            the regionId to set
	 */
	public void setRegionId(Integer regionId) {
		this.regionId = regionId;
	}


	public String execute() throws Exception {
		try {
			JSONUtils.toJson(ServletActionContext.getResponse(),
					umg.getMatchByParms(dayOfWeek, state, regionId, currentPage, rows) != null);
			return null;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
