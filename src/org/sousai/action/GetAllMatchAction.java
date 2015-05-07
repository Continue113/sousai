package org.sousai.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.FrontMessage;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;
import org.sousai.vo.MatchBean;

public class GetAllMatchAction extends UserBaseAction {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7127750467955814690L;

	private Integer currentPage;
	private Integer rows;
	private String orderByCol;
	private Boolean isAsc;
	private String strColumns;
	private String keyValue;
	private Integer selType;

	/**
	 * @return the selType
	 */
	public Integer getSelType() {
		return selType;
	}

	/**
	 * @param selType
	 *            the selType to set
	 */
	public void setSelType(Integer selType) {
		this.selType = selType;
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

	/**
	 * @return the strColumns
	 */
	public String getStrColumns() {
		return strColumns;
	}

	/**
	 * @param strColumns
	 *            the strColumns to set
	 */
	public void setStrColumns(String strColumns) {
		this.strColumns = strColumns;
	}

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
			if (isAdmin()) {
				// System.out.println("amg = " + amg.toString());
				// System.out.println("currentPage = " + currentPage);
				// System.out.println("rows = " + rows);
				if (currentPage == null) {
					currentPage = 1;
				}
				if (rows == null) {
					rows = Constant.DEFAULT_ROWS;
				}
				String[] columns = strColumns.split(",");
				List<MatchBean> list = amg.findPagedMatchByKeyValueOrderBy(
						columns, keyValue, currentPage, rows, orderByCol,
						isAsc, selType);
//				int count = amg.countAllMatch(selType);
				int count = amg.countMatchByAdmin(columns, keyValue, selType);
				FrontMessage msg = new FrontMessage(list, count);
				if (list != null) {
					MyPrint.myPrint("list.size()=" + list.size());
					JSONUtils.toJson(ServletActionContext.getResponse(), msg);
				} else {
					JSONUtils
							.toJson(ServletActionContext.getResponse(), "fail");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils.toJson(ServletActionContext.getResponse(), "fail");
		}
		return null;
	}
}
