package org.sousai.action;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.sousai.action.base.UserBaseAction;
import org.sousai.common.Constant;
import org.sousai.domain.FrontMessage;
import org.sousai.service.CommonManager;
import org.sousai.service.impl.CommonManagerImpl;
import org.sousai.tools.JSONUtils;
import org.sousai.tools.MyPrint;

import com.googlecode.jsonplugin.annotations.JSON;
import com.sun.xml.internal.bind.v2.runtime.reflect.opt.Const;

public class GetMatchByParamsAction extends UserBaseAction {

	private static final long serialVersionUID = 9221180089286963564L;

	private String keyValue;
	private Date beginTime;
	private Date endTime;
	private String matchType;
	private String region;
	private int dayOfWeek;
	private int matchState;

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
	 * @return the beginTime
	 */
	public Date getBeginTime() {
		return beginTime;
	}

	/**
	 * @param beginTime
	 *            the beginTime to set
	 */
	public void setBeginTime(Date beginTime) {
		this.beginTime = beginTime;
	}

	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime
	 *            the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
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
	 * @return the dayOfWeek
	 */
	public int getDayOfWeek() {
		return dayOfWeek;
	}

	/**
	 * @param dayOfWeek
	 *            the dayOfWeek to set
	 */
	public void setDayOfWeek(int dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
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
	 * @return the matchState
	 */
	public int getMatchState() {
		return matchState;
	}

	/**
	 * @param matchState
	 *            the matchState to set
	 */
	public void setMatchState(int matchState) {
		this.matchState = matchState;
	}

	/**
	 * @return the serialversionuid
	 */
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public String execute() throws Exception {

		// keyValue = "足";
		// matchType = "足球";
		// SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		// beginTime = format.parse("2014-12-01");
		// endTime = format.parse("2014-12-03");
		// region = "北京市-";
		// currentPage = 1;
		// rows = 10;
		// dayOfWeek = 1;
		// matchState = 6;
		MyPrint.myPrint("GetMatchByParamsAction");
		if (currentPage == null) {
			currentPage = 1;
		}
		if (rows == null) {
			rows = Constant.DEFAULT_ROWS;
		}
		try {
			java.sql.Date now = new java.sql.Date(new Date().getTime());
			FrontMessage mesg = new FrontMessage();
			mesg.setBody(cmg.findPagedMatchByParams(keyValue, matchType, now,
					matchState, dayOfWeek, beginTime, endTime, region,
					currentPage, rows, orderByCol, isAsc));
			mesg.setCount(cmg.countMatchByParams(keyValue, matchType, now, matchState, dayOfWeek, beginTime, endTime, region));
			JSONUtils.toJson(ServletActionContext.getResponse(), mesg);
		} catch (Exception e) {
			e.printStackTrace();
			JSONUtils
					.toJson(ServletActionContext.getResponse(), Constant.ERROR);
		}
		return null;
	}
}
