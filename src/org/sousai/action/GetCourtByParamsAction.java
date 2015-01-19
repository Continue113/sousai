package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;
import org.sousai.vo.CourtBean;

public class GetCourtByParamsAction extends UserBaseAction {

	private static final long serialVersionUID = 5921783278006303641L;

	private String keyValue;
	private String matchType;
	private Integer courtTypeId;
	private String region;
	private Integer currentPage;
	private Integer rows;
	private String orderByCol;
	private Boolean isAsc;

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
	 * @return the matchType
	 */
	public String getMatchType() {
		return matchType;
	}

	/**
	 * @param matchType
	 *            the matchType to set
	 */
	public void setMatchType(String matchType) {
		this.matchType = matchType;
	}

	/**
	 * @return the courtTypeId
	 */
	public Integer getCourtTypeId() {
		return courtTypeId;
	}

	/**
	 * @param courtTypeId
	 *            the courtTypeId to set
	 */
	public void setCourtTypeId(Integer courtTypeId) {
		this.courtTypeId = courtTypeId;
	}

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

	/**
	 * @return the orderByCol
	 */
	public String getOrderByCol() {
		return orderByCol;
	}

	/**
	 * @param orderByCol
	 *            the orderByCol to set
	 */
	public void setOrderByCol(String orderByCol) {
		this.orderByCol = orderByCol;
	}

	/**
	 * @return the isAsc
	 */
	public Boolean getIsAsc() {
		return isAsc;
	}

	/**
	 * @param isAsc
	 *            the isAsc to set
	 */
	public void setIsAsc(Boolean isAsc) {
		this.isAsc = isAsc;
	}

	public String execute() throws Exception {
		try {
			if (currentPage == null) {
				currentPage = 1;
			}
			if (rows == null) {
				rows = 25;
			}
			List<CourtBean> list = cmg.findPagedByParams(keyValue, matchType,
					courtTypeId, region, currentPage, rows, orderByCol, isAsc);
			int count = 0;
			FrontMessage msg = new FrontMessage(list, count);
			if (list != null) {
				msg.setCount(cmg.countByParams(keyValue, matchType,courtTypeId, region));
			}
			JSONUtils.toJson(ServletActionContext.getResponse(), msg);
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
